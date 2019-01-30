class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.date :dateofbirth
      t.string :nrc
      t.string :manno
      t.string :address
      t.string :phone
      t.string :email
      t.string :employstatus
      t.string :employministry
      t.date :dateofemploy
      t.date :expretirementdate
      t.integer :grosssalary
      t.string :nok
      t.string :maritalstatus

      t.timestamps
    end
  end
end
