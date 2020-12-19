class CreateWarehouseMonthEndStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :warehouse_month_end_stocks do |t|
      t.references :warehouse, null: false, foreign_key: true
      t.references :month_end_stock, null: false, foreign_key: true

      t.timestamps
    end
  end
end
