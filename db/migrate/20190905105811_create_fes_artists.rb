class CreateFesArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :fes_artists, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.references :festival, foreign_key: true
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
