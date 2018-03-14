class ChangeMessageColumnInBookings < ActiveRecord::Migration[5.1]
  def change
    change_column(:bookings, :message, :text)
  end
end
