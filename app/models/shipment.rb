class Shipment < ApplicationRecord
  belongs_to :stock
  belongs_to :balance
  has_many :customers, through: :shipment_customers
  has_many :shipment_customers

  validates :name, presence: true, length: { maximum: 255 }
end
