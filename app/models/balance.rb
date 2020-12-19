class Balance < ApplicationRecord
  has_many :arrivals
  has_many :shipments
end
