class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  STATUS_COLORS = {
    "Accepted" => "#01bbf0",
    "Pending" => "#DAA520",
    "Rejected" => "#FF5F5F"
  }
  validates :status, inclusion: { in: STATUS_COLORS.keys, allow_blank: false }
end
