class Festival < ApplicationRecord
    has_many_attached :images
    belongs_to :user
    has_many :fes_artists
    has_many :artists, through: :fes_artists
    accepts_nested_attributes_for :artists
    has_many :favorite_festivals, dependent: :destroy
    has_many :favorite_users, through: :likes, source: :user
    paginates_per 6
end




