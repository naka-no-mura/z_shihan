class Calendar < ApplicationRecord
  has_many :products, through: :product_calendars
  has_many :product_calendars

  validates :year_month, presence: true, length: { maximum: 20 }
end
