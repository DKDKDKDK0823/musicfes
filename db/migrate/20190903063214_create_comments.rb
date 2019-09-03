class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :reply
      t.integer :user_id
      t.integer :festival_id

      t.timestamps
    end
  end
end
