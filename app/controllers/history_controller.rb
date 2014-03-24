class HistoryController < ApplicationController
  
  def new
    @history = History.new
  end

  def create
    @history = History.new(params[:history].permit(:year, :team, :wins, :losses))
  end

  def import
    History.import(params[:file])
    redirect_to root_url, notice: "Products imported."
  end

end
