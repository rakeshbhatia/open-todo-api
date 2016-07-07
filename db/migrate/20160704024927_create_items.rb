class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.boolean :completed, null: false, default: false
      t.timestamps null: false
    end
  end
end
