class BookingsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    # @bookings = Booking.all.select do |booking|
    #   booking.user_id == @user.id
    # end
    @bookings = policy_scope(Booking)
  end

  def create
    @instrument = Instrument.find(params[:instrument_id])
    @user = @instrument.user
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.instrument = @instrument
    authorize @instrument
    authorize @booking
    if @booking.save
      redirect_to user_bookings_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @instrument = Booking.find(params[:id])
    @booking.destroy
    authorize @booking
    redirect_to root
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
