class StocksController < ApplicationController

  layout "market"

  def index
    @stocks = Stock.all
  end

  def show
    @stock = Stock.find(params[:id])
    @note = Note.new
  end

  def new
    @note = Note.new
    # @stock.notes.new
  end

  def edit 
    @stock = Note.find(params[:id])
  end

  def update

  end

  # def create
  #   @stock = Stock.find_or_initialize_by(symbol: params[:stock_symbol])
  #   @stock.name ||= params[:stock_name] 

  #   final_params = params.require(:note).permit(:market, :timeframe, :direction, :comment)
  #   final_params[:date] = Time.now

  #   @stock.notes.new(final_params)
  #   # @note = Note.new(params.require(:note).permit(:market, :date, :timeframe, :comment))
  #   if @stock.save
  #     # allows you to flash message on the screen on redirect
  #     flash[:notice] = "New Stock added successfully"
  #     redirect_to home_path
  #   else
  #     render 'new'
  #   end
  # end

end
