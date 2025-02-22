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
    @clothe = Clothe.find(params[:id])
    if @clothe.destroy
      redirect_to clothes_path
    else
      render :index
    end
  end

  def edit
   @clothe = Clothe.find(params[:id])
  end

  def update
    @clothe = Clothe.find(params[:id])
    if @clothe.update(clothe_params)
     redirect_to clothes_path
    end
  end

  private

  def clothe_params
    params.require(:clothe).permit(:color, :price_per_day, :clothe_type, :genre, :size, :photo, :name)
  end
end
