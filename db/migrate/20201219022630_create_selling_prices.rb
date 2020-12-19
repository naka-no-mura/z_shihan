class CreateSellingPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :selling_prices do |t|
      t.integer :shipment_date
      t.integer :selling_price
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
