class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.string :permissions, default: 'private'

      t.timestamps null: false
    end
  end
end
