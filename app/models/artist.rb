class Artist < ApplicationRecord
    has_one_attached :image
    has_many :fes_artists
end
