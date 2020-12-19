class CreateMonthEndStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :month_end_stocks do |t|
      t.string :year_month
      t.integer :quantity

      t.timestamps
    end
  end
end
