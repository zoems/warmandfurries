class BookingsController < ApplicationController
  before_action :set_booking, only: %i[destroy]


  def create
    @booking = Booking.new(booking_params)
    @furrie = Furrie.find(params[:furry_id])
    @booking.user = current_user
    @booking.furrie = @furrie
    @booking.status = "pending"

    days_booked = params[:booking][:dates].split(" to ")
    @booking.end_date = days_booked[1]
    @booking.start_date = days_booked[0]
    # @booking.dates = params[:booking][:dates]
    range = (@booking.end_date - @booking.start_date).to_i

    @booking.total_cost = range * @furrie.price
    if @booking.save!
      redirect_to furries_path
    else
      render "furries/show", status: :unprocessable_entity
    end
  end

  def destroy
    @furrie_id = @booking.furrie_id
    @booking.destroy
    redirect_to furry_path(@furrie_id)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:dates)
  end
end
