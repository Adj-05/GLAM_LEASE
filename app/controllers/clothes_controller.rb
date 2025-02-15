class ClothesController < ApplicationController

<<<<<<< HEAD
=======
  def index
    @clothes = Clothe.all
  end
>>>>>>> master

  def show
    @clothe = Clothe.find(params[:id])
  end

end
