class Festival < ApplicationRecord
    attachment :image
    belongs_to :user
    has_many :fes_artists
    has_many :artists, through: :fes_artists
    accepts_nested_attributes_for :artists
    has_many :favorite_festivals, dependent: :destroy
    has_many :favorite_users, through: :likes, source: :user
end
