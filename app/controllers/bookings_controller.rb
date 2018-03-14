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

  def update
    @booking = Booking.find(params[:id])
    # call accept or decline action depending on params
    if params[:type] == "accepted"
      accept
    elsif params[:type] == "rejected"
      reject
    end
    # save booking
    @booking.save
    redirect_to dashboard_owner_path
  end

  private

  def booking_param
    params.require(:booking).permit(:starts_at, :ends_at, :message)
  end

  def accept
    @booking.status = "accepted"
  end

  def reject
    @booking.status = "rejected"
  end

end
