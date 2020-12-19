class WarehouseMonthEndStock < ApplicationRecord
  belongs_to :warehouse
  belongs_to :MonthEndStock
end
