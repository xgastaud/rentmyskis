class UsersController < ApplicationController
  def dashboard
    @bookings = current_user.bookings
    @requests = current_user.bookings_as_owner
  end
end
