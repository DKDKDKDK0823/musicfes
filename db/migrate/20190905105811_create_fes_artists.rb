class CreateFesArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :fes_artists do |t|
      t.references :festival, foreign_key: true
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
