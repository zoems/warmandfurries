class FurriesController < ApplicationController
  before_action :set_furry, only: %i[show destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @furries = Furry.all
  end

  def show
    @booking = Booking.new
    # Get an array of hashes witht he start and end date
    @dates_booked = @furry.bookings.map do |booking|
      { from: booking[:start_date], to: booking[:end_date] }
    end
  end

  def new
    @furry = Furry.new
  end

  def create
    @furry = Furry.new(furry_params)
    @furry.user = current_user
    if @furry.save
      redirect_to furries_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @furry.destroy
    redirect_to furries_path
  end

  private

  def set_furry
    @furry = Furry.find(params[:id])
  end

  def furry_params
    params.require(:furry).permit(:name, :description, :price, :fursona, :photo)
  end
end
