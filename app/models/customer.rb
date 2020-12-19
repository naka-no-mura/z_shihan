class Customer < ApplicationRecord
  belongs_to :prefecture
  has_many :shipments, through: :shipment_customers
  has_many :shipment_customers
  has_many :selling_prices

  validates :name, presence: true, length: { maximum: 255 }
end
