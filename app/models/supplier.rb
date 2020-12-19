class Supplier < ApplicationRecord
  has_many :arrivals, through: :arrival_suppliers
  has_many :arrival_suppliers
  has_many :purchase_prices

  validates :name, presence: true, length: { maximum: 255 }
end
