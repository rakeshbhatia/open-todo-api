class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :listname
      t.string :list_name

      t.timestamps null: false
    end
  end
end
