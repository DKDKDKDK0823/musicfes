class CreateFavoriteFestivals < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_festivals, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.references :user, foreign_key: true
      t.references :festival, foreign_key: true
      t.timestamps
    end
  end
end
