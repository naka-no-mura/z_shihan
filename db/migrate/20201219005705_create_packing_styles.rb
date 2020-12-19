class CreatePackingStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :packing_styles do |t|
      t.string :name

      t.timestamps
    end
    add_index :packing_styles, :name, unique: true
  end
end
