class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.string :year_month

      t.timestamps
    end
    add_index :calendars, :year_month, unique: true
  end
end
