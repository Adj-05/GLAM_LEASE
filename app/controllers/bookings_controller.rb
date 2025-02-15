class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @clothe = Clothe.find(params[:clothe_id])
  end

  def create
    binding.break
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    @booking.clothe = @clothe

    puts "ZZZZZZZZZ#{@booking.errors.full_messages}"
    @booking.save

    redirect_to clothes_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
