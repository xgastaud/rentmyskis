class BookingsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @booking = Booking.new(booking_param)
    @booking.product = @product
    @booking.user = current_user
    @booking.status = "pending"
    if @booking.save
      redirect_to products_path
      # redirect_to booking_path(@booking) # En attente de la show de confirmation
    else
      render 'products/show'
    end
  end

  private

  def booking_param
    params.require(:booking).permit(:starts_at, :ends_at, :message)
  end

end
