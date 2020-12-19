class CreateProductCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :product_calendars do |t|
      t.references :calendar, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
