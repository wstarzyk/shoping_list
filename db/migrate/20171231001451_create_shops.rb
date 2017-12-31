class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :item
      t.integer :cost
      t.boolean :complete

      t.timestamps null: false
    end
  end
end
