class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.integer :price
      t.boolean :condition
      t.text :description
      t.boolean :delivery_options
      t.json :photos
      t.references :users
      t.references :subcategories
      t.timestamps null: false
    end
  end
end
