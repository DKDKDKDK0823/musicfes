class CreateFestivals < ActiveRecord::Migration[5.2]
  def change
    create_table :festivals, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :name
      t.string :image_id
      t.string :price
      t.string :region
      t.string :genre
      t.date :day
      t.string  :adress
      t.integer :user_id
      t.integer :fes_artist_id
      t.decimal :latitude, precision: 10, scale: 6 
      t.decimal :longitude, precision: 10, scale: 6 
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
