class Arrival < ApplicationRecord
  belongs_to :stock
  belongs_to :balance
end
