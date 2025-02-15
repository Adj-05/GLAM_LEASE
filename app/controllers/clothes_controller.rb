class ClothesController < ApplicationController

  def index
    @clothes = Clothe.all
  end

  def show
    @clothe = Clothe.find(params[:id])
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

  private

  def clothe_params
    params.require(:clothe).permit(:color, :price_per_day, :clothe_type, :genre, :size, :photo)
  end
end
