class AddFesArtistIdToFestivals < ActiveRecord::Migration[5.2]
  def change
    add_column :festivals, :fes_artist_id, :integer
  end
end
