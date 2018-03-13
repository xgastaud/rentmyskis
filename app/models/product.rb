class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :category, :price_per_day, :location, :description, presence: true
  mount_uploader :photo, PhotoUploader
end
