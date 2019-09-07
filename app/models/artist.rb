class Artist < ApplicationRecord
    has_many :festivals
    accepts_nested_attributes_for :
end
