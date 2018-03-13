class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :category, :price_per_day, :location, :description, presence: true
end
