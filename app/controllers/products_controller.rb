class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:category].present? && params[:address].present? && params[:distance].present?
      @products = Product.where(category: params[:category]).near(params[:address],params[:distance].to_i).page(params[:page]).per(6)

    elsif params[:address].present? && params[:category].present?
      @products = Product.where(category: params[:category]).near(params[:address],params[:distance].to_i).page(params[:page]).per(6)

    elsif params[:address].present? && params[:distance].present?
      @products = Product.near(params[:address],params[:distance].to_i).page(params[:page]).per(6)

    elsif params[:address].present?
      @products = Product.near(params[:address],5).page(params[:page]).per(6)

    elsif params[:category].present?
      @products = Product.where(category: params[:category]).page(params[:page]).per(6)

    else
      @products = Product.all.page(params[:page]).per(6)
    end

    @markers = @products.map do |product|
      { lat: product.latitude, lng: product.longitude }
    end
  end

  def show
    @product = Product.find(params[:id])
    @booking = Booking.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

private

  def product_params
    params.require(:product).permit(:title, :category, :price_per_day, :address, :description, :photo)
  end

end
