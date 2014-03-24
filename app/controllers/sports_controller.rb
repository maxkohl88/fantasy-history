class SportsController < ApplicationController

  def new
    @sport = Sport.new
  end

  def create
  end

  def show
    @sport = Sport.find(params[:id]) 
  end

  def index
    @sports = Sport.all 
  end

end
