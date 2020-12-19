class Arrival < ApplicationRecord
  belongs_to :stock
  belongs_to :balance
  has_many :suppliers, through: :arrival_suppliers
  has_many :arrival_suppliers
end
