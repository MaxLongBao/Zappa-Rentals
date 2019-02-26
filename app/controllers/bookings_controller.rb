class BookingsController < ApplicationController
  def new
    @instrument = Instrument.find(params[:instrument_id])
    @booking = Booking.new
  end

  def create
    @instrument = Instrument.find(params[:instrument_id])
    @user = @instrument.user
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.instrument = @instrument
    if @booking.save
      redirect_to instrument_path(@instrument)
    else
      render :new
    end
  end

  def destroy
    @instrument = Booking.find(params[:id])
    @booking.destroy
    redirect_to root
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
