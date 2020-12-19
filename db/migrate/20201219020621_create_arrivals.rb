class CreateArrivals < ActiveRecord::Migration[6.0]
  def change
    create_table :arrivals do |t|
      t.integer :quantity
      t.integer :lot_number
      t.integer :arrival_date
      t.references :stock, null: false, foreign_key: true
      t.references :balance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
