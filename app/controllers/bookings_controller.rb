class BookingsController < ApplicationController
  before_action :set_booking, only: %i[destroy]

  def create
    @booking = Booking.new(booking_params)
    @furry = Furry.find(params[:furry_id])
    @booking.user = current_user
    @booking.furry = @furry
    @booking.status = "pending"

    days_booked = params[:booking][:dates].split(" to ")

    unless days_booked.empty?
      @booking.end_date = days_booked[1]
      @booking.start_date = days_booked[0]

      range = (@booking.end_date - @booking.start_date).to_i
      @booking.total_cost = range * @furry.price
      if @booking.save!
        redirect_to furries_path
      else
        render "furries/show", status: :unprocessable_entity
      end

    else
      render "furries/show", status: :unprocessable_entity
    end
  end

  def destroy
    @furry_id = @booking.furry_id
    @booking.destroy
    redirect_to furry_path(@furry_id)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:dates)
  end
end
