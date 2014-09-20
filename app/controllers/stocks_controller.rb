class StocksController < ApplicationController

  layout "market"

  def index
    @stocks = Stock.all
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def new
    @stock = Stock.new
    @stock.notes.new
  end

  def create
    
  end

end
