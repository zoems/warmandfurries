class BookingsController < ApplicationController
  before_action :set_booking, only: %i[destroy]

  def index
    @mybookings = current_user.bookings
    @myfurries = current_user.furries
    @my_furries_bookings = current_user.bookings_as_owner
  end

  def update
    @answer = params[:commit]
    @booking = Booking.find(params[:id])
    if @answer == "reject"
      @booking.rejected!
    elsif @anwser == "accept"
      @booking.accepted!
    end
    redirect_to booking_path
  end

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
