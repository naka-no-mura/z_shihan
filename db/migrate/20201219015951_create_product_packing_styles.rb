class CreateProductPackingStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :product_packing_styles do |t|
      t.references :product, null: false, foreign_key: true
      t.references :packing_style, null: false, foreign_key: true

      t.timestamps
    end
  end
end
