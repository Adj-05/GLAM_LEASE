class ClothesController < ApplicationController

  def index
    @clothes = Clothe.all
  end

  def show
    @clothe = Clothe.find(params[:id])
    @booking = Booking.new
  end

  def new
    @clothe = Clothe.new
  end

  def create
    @clothe = Clothe.new(clothe_params)
    @clothe.user = current_user
    if @clothe.save
      redirect_to clothes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @clothe = Clothe.destroy(params[:id])
  end

  private

  def clothe_params
    params.require(:clothe).permit(:color, :price_per_day, :clothe_type, :genre, :size, :photo, :name)
  end
end
