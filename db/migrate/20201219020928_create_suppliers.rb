class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.integer :postal_code
      t.string :address
      t.string :department

      t.timestamps
    end
    add_index :suppliers, :name, unique: true
  end
end
