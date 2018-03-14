class UsersController < ApplicationController
  def dashboard
    @bookings = current_user.bookings
  end

  def dashboard_owner
    # @bookings = current_user.bookings # Probably not necessary
    @requests = current_user.bookings_as_owner
  end
end
