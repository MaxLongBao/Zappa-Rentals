class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.save

    redirect_to instrument_path(@instrument)
  end

  def edit
    @instrument = instrument.find(params[:id])
  end

  def update
    @instrument = instrument.find(params[:id])
    @instrument.update(instrument_params)

    redirect_to instrument_path(@instrument)
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    @instrume.destroy

    redirect_to root_path
  end

  private

  def instrument_params
    params.require(:instrument).permit(:name, :category, :condition, :location, :price, :available)
  end
end
