class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings.includes(:clothe)
  end



  def new
    @booking = Booking.new
    @clothe = Clothe.find(params[:clothe_id])
  end

  def create
    @clothe = Clothe.find(params[:clothe_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.clothe = @clothe
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end

    def accept
    end

    def decline
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
