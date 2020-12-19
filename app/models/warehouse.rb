class Warehouse < ApplicationRecord
  has_many :stocks, through: :warehouse_stocks
  has_many :warehouse_stocks
  has_many :month_end_stocks, through: :warehouse_month_end_stocks
  has_many :month_end_stocks

  validates :name, presence: true, length: { maximum: 255 }
end
