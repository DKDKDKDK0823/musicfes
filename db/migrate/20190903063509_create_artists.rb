class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :image_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
