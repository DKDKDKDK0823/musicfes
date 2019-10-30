class CreateFestivals < ActiveRecord::Migration[5.2]
  def change
    create_table :festivals, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :name
      t.string :image_id
      t.string :price
      t.integer :region_id
      t.integer :genre_id
      t.integer :day_id
      t.boolean :is_deleted, default: false

      t.timestamps
    end
  end
end
