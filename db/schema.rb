# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_19_022630) do

  create_table "arrival_suppliers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "supplier_id", null: false
    t.bigint "arrival_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["arrival_id"], name: "index_arrival_suppliers_on_arrival_id"
    t.index ["supplier_id"], name: "index_arrival_suppliers_on_supplier_id"
  end

  create_table "arrivals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "quantity"
    t.integer "lot_number"
    t.integer "arrival_date"
    t.bigint "stock_id", null: false
    t.bigint "balance_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["balance_id"], name: "index_arrivals_on_balance_id"
    t.index ["stock_id"], name: "index_arrivals_on_stock_id"
  end

  create_table "balances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "unit_margin"
    t.integer "total_margin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "calendars", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "year_month", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["year_month"], name: "index_calendars_on_year_month", unique: true
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "prefecture_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_customers_on_name", unique: true
    t.index ["prefecture_id"], name: "index_customers_on_prefecture_id"
  end

  create_table "month_end_stocks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "year_month"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "packing_styles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_packing_styles_on_name", unique: true
  end

  create_table "prefectures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_prefectures_on_name", unique: true
  end

  create_table "product_calendars", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "calendar_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["calendar_id"], name: "index_product_calendars_on_calendar_id"
    t.index ["product_id"], name: "index_product_calendars_on_product_id"
  end

  create_table "product_packing_styles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "packing_style_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["packing_style_id"], name: "index_product_packing_styles_on_packing_style_id"
    t.index ["product_id"], name: "index_product_packing_styles_on_product_id"
  end

  create_table "product_stocks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "stock_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_stocks_on_product_id"
    t.index ["stock_id"], name: "index_product_stocks_on_stock_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_products_on_name", unique: true
  end

  create_table "purchase_prices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "arrival_date"
    t.integer "purchase_price"
    t.bigint "supplier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["supplier_id"], name: "index_purchase_prices_on_supplier_id"
  end

  create_table "selling_prices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "shipment_date"
    t.integer "selling_price"
    t.bigint "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_selling_prices_on_customer_id"
  end

  create_table "shipment_customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "shipment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_shipment_customers_on_customer_id"
    t.index ["shipment_id"], name: "index_shipment_customers_on_shipment_id"
  end

  create_table "shipments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "quantity"
    t.integer "order_number"
    t.integer "shipment_date"
    t.bigint "stock_id", null: false
    t.bigint "balance_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["balance_id"], name: "index_shipments_on_balance_id"
    t.index ["stock_id"], name: "index_shipments_on_stock_id"
  end

  create_table "stocks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "suppliers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.integer "postal_code"
    t.string "address"
    t.string "department"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_suppliers_on_name", unique: true
  end

  create_table "warehouse_month_end_stocks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "warehouse_id", null: false
    t.bigint "month_end_stock_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["month_end_stock_id"], name: "index_warehouse_month_end_stocks_on_month_end_stock_id"
    t.index ["warehouse_id"], name: "index_warehouse_month_end_stocks_on_warehouse_id"
  end

  create_table "warehouse_stocks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "warehouse_id", null: false
    t.bigint "stock_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stock_id"], name: "index_warehouse_stocks_on_stock_id"
    t.index ["warehouse_id"], name: "index_warehouse_stocks_on_warehouse_id"
  end

  create_table "warehouses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_warehouses_on_name", unique: true
  end

  add_foreign_key "arrival_suppliers", "arrivals"
  add_foreign_key "arrival_suppliers", "suppliers"
  add_foreign_key "arrivals", "balances"
  add_foreign_key "arrivals", "stocks"
  add_foreign_key "customers", "prefectures"
  add_foreign_key "product_calendars", "calendars"
  add_foreign_key "product_calendars", "products"
  add_foreign_key "product_packing_styles", "packing_styles"
  add_foreign_key "product_packing_styles", "products"
  add_foreign_key "product_stocks", "products"
  add_foreign_key "product_stocks", "stocks"
  add_foreign_key "purchase_prices", "suppliers"
  add_foreign_key "selling_prices", "customers"
  add_foreign_key "shipment_customers", "customers"
  add_foreign_key "shipment_customers", "shipments"
  add_foreign_key "shipments", "balances"
  add_foreign_key "shipments", "stocks"
  add_foreign_key "warehouse_month_end_stocks", "month_end_stocks"
  add_foreign_key "warehouse_month_end_stocks", "warehouses"
  add_foreign_key "warehouse_stocks", "stocks"
  add_foreign_key "warehouse_stocks", "warehouses"
end
