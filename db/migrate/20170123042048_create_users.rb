class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :username, null: false
      t.string :password, null: false
      t.string :country
      t.string :avatar
      t.integer :role, default: 0	
      t.timestamps null: false
    end
  end
end
