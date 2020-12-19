class CreateBalances < ActiveRecord::Migration[6.0]
  def change
    create_table :balances do |t|
      t.integer :unit_margin
      t.integer :total_margin

      t.timestamps
    end
  end
end
