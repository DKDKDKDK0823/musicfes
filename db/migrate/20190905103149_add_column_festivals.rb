class AddColumnFestivals < ActiveRecord::Migration[5.2]
  def change
    add_column :festivals, :genre, :string
    add_column :festivals, :day, :date
    add_column :festivals, :regions, :string
  end
end
