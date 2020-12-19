class MonthEndStock < ApplicationRecord
  has_many :warehouses, through: :warehouse_month_end_stocks
  has_many :warehouse_month_end_stocks
end
