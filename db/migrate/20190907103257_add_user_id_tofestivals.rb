class AddUserIdTofestivals < ActiveRecord::Migration[5.2]
  def change
    add_column :festivals, :user_id, :integer
  end
end
