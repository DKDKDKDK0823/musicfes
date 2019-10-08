class RemoveFavoriteFestivalIdFromFestivals < ActiveRecord::Migration[5.2]
  def change
    remove_column :festivals, :favorite_festival_id, :integer
  end
end
