class CreateShipmentCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :shipment_customers do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :shipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
