class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :itemname
      t.string :item_name

      t.timestamps null: false
    end
  end
end
