class AddIntroductionToFestivals < ActiveRecord::Migration[5.2]
  def change
    add_column :festivals, :introduction, :string
  end
end
