class HistoriesController < ApplicationController
  
  def new
    @history = History.new
    @league = League.find(params[:league_id])
  end

  def create
    @league = League.find(params[:league_id]) 
    @history = @league.histories.create(history_params)


    if @history.save
     redirect_to league_histories_path(@league)
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
    @league = League.find(params[:league_id])
    @histories = @league.histories.all


  end

  private
  def history_params
    params.require(:history).permit(:year, :team, :wins, :losses, :ties, :championship, :league_id)
  end
end
