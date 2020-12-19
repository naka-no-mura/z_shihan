class CreateWarehouseStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :warehouse_stocks do |t|
      t.references :warehouse, null: false, foreign_key: true
      t.references :stock, null: false, foreign_key: true

      t.timestamps
    end
  end
end
