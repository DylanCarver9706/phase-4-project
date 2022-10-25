class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :menu_img
      t.string :website_URL
      t.string :category
      t.boolean :favorite?

      t.timestamps
    end
  end
end
