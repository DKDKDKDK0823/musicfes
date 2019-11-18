class Festival < ApplicationRecord
    after_validation :geocode
    has_many_attached :images
    belongs_to :user
    has_many :fes_artists, dependent: :destroy
    has_many :festivals, through: :fes_artists
    accepts_nested_attributes_for :fes_artists, allow_destroy: true
    has_many :favorite_festivals, dependent: :destroy
    has_many :favorite_users, through: :likes, source: :user
    validates :name, :genre, :price, :adress,  presence: true
    validates :introduction,  presence: true, length: { minimum: 1, maximum: 30 }
    paginates_per 6

    private

    def geocode
      uri = URI.escape("https://maps.googleapis.com/maps/api/geocode/json?address="+self.adress.gsub(" ", "")+"&key=AIzaSyADd7HfuXWmrAbFLpvt7JVx5hhvmiu_vv0")
      res = HTTP.get(uri).to_s
      response = JSON.parse(res)
      
      if response.has_value?("OK")
        self.latitude = response["results"][0]["geometry"]["location"]["lat"]
        self.longitude = response["results"][0]["geometry"]["location"]["lng"]
      end
    end
end