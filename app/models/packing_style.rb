class PackingStyle < ApplicationRecord
  has_many :products, through: :product_packing_styles
  has_many :product_packing_styles

  validates :name, presence: true, length: { maximum: 255 }
end
