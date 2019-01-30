class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :itemno
      t.string :name
      t.date :stockingdate
      t.string :model
      t.date :warrantexpdate
      t.string :serialno

      t.timestamps
    end
  end
end
