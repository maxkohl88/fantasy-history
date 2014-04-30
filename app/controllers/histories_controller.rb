class HistoriesController < ApplicationController
  
  def new
    @history = History.new
  end

  def create
  
    @history = History.new(history_params)

    if @history.save
     redirect_to history_url(@history)
    else
     render 'new' 
    end
  end

  def show
    @history = History.find(params[:id])
  end

  def import
    History.import(params[:file])
    redirect_to root_url, notice: "Products imported."
  end

  def index
    @histories = History.all
  end

  private
  def history_params
    params.require(:history).permit(:year, :team, :wins, :losses, :ties, :championship)
  end
end
