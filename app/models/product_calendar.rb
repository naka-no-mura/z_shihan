class ProductCalendar < ApplicationRecord
  belongs_to :calendar
  belongs_to :product
end
