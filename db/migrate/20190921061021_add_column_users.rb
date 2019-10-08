class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :festival_id, :integer
  end
end
