class AddColumnFestivals < ActiveRecord::Migration[5.2]
  def change
    add_column :festivals, :adress, :string
  end
end
