class Festival < ApplicationRecord
    has_many_attached :images
    belongs_to :user
    has_many :fes_artists
    has_many :artists, through: :fes_artists
    accepts_nested_attributes_for :artists
    has_many :favorite_festivals, dependent: :destroy
    has_many :favorite_users, through: :likes, source: :user
    paginates_per 6

    private

    def geocode
      uri = URI.escape("https://maps.googleapis.com/maps/api/geocode/json?address="+self.address.gsub(" ", "")+"&key=AIzaSyADd7HfuXWmrAbFLpvt7JVx5hhvmiu_vv0")
      res = HTTP.get(uri).to_s
      response = JSON.parse(res)
      self.latitude = response["results"][0]["geometry"]["location"]["lat"]
      self.longitude = response["results"][0]["geometry"]["location"]["lng"]
    end
end