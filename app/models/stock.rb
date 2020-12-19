class Stock < ApplicationRecord
  has_many :arrivals
  has_many :shipments
  has_many :warehouses, through: :warehouse_stocks
  has_many :warehouse_stocks
  has_many :products, through: :product_stocks
  has_many :product_stocks
end
