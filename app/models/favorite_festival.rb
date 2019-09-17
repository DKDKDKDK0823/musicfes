class FavoriteFestival < ApplicationRecord
      belongs_to :festival, counter_cache: :likes_count
      belongs_to :user
end
