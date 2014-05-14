class SportsController < ApplicationController

  def new
    @sport = Sport.new
  end

  def show
    @sport = Sport.find(params[:id]) 
    @league = League.all
  end

  def index
    @sports = Sport.all 
    @leagues = League.all
  end

end
