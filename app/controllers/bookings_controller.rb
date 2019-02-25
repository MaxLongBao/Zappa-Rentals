class BookingsController < ApplicationController
  def new
    @instrument = Instrument.find(params[:instrument_id])
    @booking = Booking.new
  end

  def create
    @instrument = Instrument.find(params[:instrument_id])
    @booking = Booking.new(booking_params)
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
    params.require(:start_date, :end_date).permit(:instrument_id, :user_id)
  end
end
