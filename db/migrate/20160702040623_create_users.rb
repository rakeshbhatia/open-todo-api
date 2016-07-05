class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :full_name
      t.text :bio

      t.timestamps null: false
    end
  end
end
