class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :category, :price_per_day, :address, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  CATEGORY_COLORS = {
    "Skis" => "#DAA520",
    "Snowboard" => "#005792",
    "Other" => "#307672"
  }

  validates :category, inclusion: { in: CATEGORY_COLORS.keys, message: "Select a category" }
  
end
