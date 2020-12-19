class ProductPackingStyle < ApplicationRecord
  belongs_to :product
  belongs_to :packing_style
end
