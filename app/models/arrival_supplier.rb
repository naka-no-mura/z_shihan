class ArrivalSupplier < ApplicationRecord
  belongs_to :arrival
  belongs_to :supplier
end
