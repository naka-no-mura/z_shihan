class Product < ApplicationRecord
  has_many :stocks, through: :product_stocks
  has_many :product_stocks
  has_many :packing_styles, through: :product_packing_styles
  has_many :product_packing_styles
  has_many :calendars, through: :product_calendars
  has_many :calendars

  validates :name, presence: true, length: { maximum: 255 }
end
