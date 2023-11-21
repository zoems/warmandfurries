class FurriesController < ApplicationController
  before_action :set_furrie, only: %i[show destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @furries = Furrie.all
  end

  def show
    @booking = Booking.new
  end

  # def new
  #   @furrie = Furrie.new
  # end

  # def create
  #   @furrie = Furrie.new(furrie_params)
  #   # add user id
  #   if @furrie.save
  #     redirect_to furries_path
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  def destroy
    @furrie.destroy
    redirect_to furries_path
  end

  private

  def set_furrie
    @furrie = Furrie.find(params[:id])
  end

  def furrie_params
    params.require(:furrie).permit(:name, :description, :price, :fursona, :availibility)
  end
end
