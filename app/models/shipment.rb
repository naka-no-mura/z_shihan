class Shipment < ApplicationRecord
  belongs_to :stock
  belongs_to :balance
end
