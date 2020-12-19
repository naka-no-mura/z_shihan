class CreatePurchasePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_prices do |t|
      t.integer :arrival_date
      t.integer :purchase_price
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
