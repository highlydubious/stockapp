class NotesController < ApplicationController

  layout "market"
  # All notes feed from all mtks
  def index
    @notes = Note.all
    @note = Note.new
    @stocks = Stock.all
  end

  def new
    @note = Note.new
  end

  def create
    @stock = Stock.find_or_initialize_by(symbol: params[:stock_symbol])
    @stock.name ||= params[:stock_name] if !params[:stock_name]

    final_params = params.require(:note).permit(:market, :timeframe, :direction, :comment)
    final_params[:date] = Time.now



    @stock.notes.new(final_params)
    # @note = Note.new(params.require(:note).permit(:market, :date, :timeframe, :comment))
    if @stock.save
      # allows you to flash message on the screen on redirect
      flash[:notice] = "New Stock added successfully"
      redirect_to home_path
    else
      render 'new'
    end
  end

  def create2

  end

  def destroy
    @note = Note.find(params[:id])
    if @note.delete
      flash[:notice] = "Deleted successfully"
      redirect_to home_path
    else
      render 'index'
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
     @stock = Stock.find_or_initialize_by(symbol: params[:stock_symbol])
    @stock.name ||= params[:stock_name] if !params[:stock_name]

    final_params = params.require(:note).permit(:market, :timeframe, :direction, :comment)
    final_params[:date] = Time.now

    @stock.notes.new(final_params)
    # @note = Note.new(params.require(:note).permit(:market, :date, :timeframe, :comment))
    if @stock.save
      # allows you to flash message on the screen on redirect
      flash[:notice] = "Be Careful Editing the Past"
      redirect_to home_path
    else
      render 'new'
    end
  end


  def show
    # @note = Note.find(params[:id])
    @notes = Note.where(market: "AAPL")
    # @note = Note.all
  end

  def note
    @notes = Note.find(params[:id])
  end


end
