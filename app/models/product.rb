class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :serial, length: { maximum: 100 }
  validates :url, presence: true, length: { maximum: 1000 }
end
