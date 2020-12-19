class Prefecture < ApplicationRecord
  has_many :customers

  validates :name, presence: true, length: { maximum: 255 }
end
