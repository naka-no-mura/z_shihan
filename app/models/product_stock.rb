class ProductStock < ApplicationRecord
  belongs_to :stock
  belongs_to :product
end
