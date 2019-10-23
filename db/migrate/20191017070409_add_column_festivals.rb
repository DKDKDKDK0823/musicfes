class AddColumnFestivals < ActiveRecord::Migration[5.2]
  def change
    add_column :festivals, :latitude, :decimal, precision: 10, scale: 6
    add_column :festivals, :longitude, :decimal, precision: 10, scale: 6
  end
end
