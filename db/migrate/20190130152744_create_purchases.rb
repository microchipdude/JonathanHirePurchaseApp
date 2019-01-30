class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :purchaseno
      t.references :client, foreign_key: true
      t.date :dateofpurchase
      t.references :item, foreign_key: true
      t.integer :quantity
      t.float :purchasevalue

      t.timestamps
    end
  end
end
