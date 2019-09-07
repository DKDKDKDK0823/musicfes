class AddColumnUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name_kana, :string
    add_column :users, :first_name_kana, :string
    add_column :users, :adress, :string
    add_column :users, :introduction, :text
    add_column :users, :profile_image_id, :text
    add_column :users, :image_id, :text
    add_column :users, :name, :string
    add_column :users, :is_deleted, :boolean, default: false
  end
end
