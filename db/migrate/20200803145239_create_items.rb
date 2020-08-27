class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :brand, null: false
      t.integer :condition, null: false
      t.integer :status, null: false
      t.integer :shipping_costs, null: false
      t.integer :shipping_date, null: false
      t.integer :price, null: false
      t.reference :seller_id, null: false, foreign_key: true
      t.reference :buyer_id, foreign_key: true
      t.timestamps
    end
  end
end
