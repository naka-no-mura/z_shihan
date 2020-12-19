class CreateShipments < ActiveRecord::Migration[6.0]
  def change
    create_table :shipments do |t|
      t.integer :quantity
      t.integer :order_number
      t.integer :shipment_date
      t.references :stock, null: false, foreign_key: true
      t.references :balance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
