class CreateArrivalSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :arrival_suppliers do |t|
      t.references :supplier, null: false, foreign_key: true
      t.references :arrival, null: false, foreign_key: true

      t.timestamps
    end
  end
end
