class CreateFavoriteArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_artists, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id 
      t.integer :artist_id

      t.timestamps
    end
  end
end
