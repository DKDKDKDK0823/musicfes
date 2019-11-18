class Artist < ApplicationRecord
    has_one_attached :image
    has_many :fes_artists, dependent: :destroy
    has_many :festivals, through: :fes_artists
    has_many :favorite_artists, dependent: :destroy
end
