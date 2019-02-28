class InstrumentsController < ApplicationController
  def index
    @instruments = policy_scope(Instrument)
    # @booking = policy_scope(Booking)
  end

  def show
    @instrument = Instrument.find(params[:id])
    @booking = Booking.new()
    authorize @instrument
  end

  def new
    @instrument = Instrument.new
    authorize @instrument
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    authorize @instrument
    if @instrument.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @instrument = instrument.find(params[:id])
    authorize @instrument
  end

  def update
    @instrument = instrument.find(params[:id])
    @instrument.update(instrument_params)
    authorize @instrument

    redirect_to instrument_path(@instrument)
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    @instrume.destroy
    authorize @instrument

    redirect_to root_path
  end

  private

  def instrument_params
    params.require(:instrument).permit(:name, :category, :condition, :location, :price, :available)
  end
end
