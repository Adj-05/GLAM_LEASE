class ClothesController < ApplicationController
  def show
    @clothe = Clothe.find(params[:id])
  end
end
