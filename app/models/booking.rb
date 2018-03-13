class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validates :status, inclusion: { in: ["accepted", "pending", "rejected"], allow_blank: false }
end
