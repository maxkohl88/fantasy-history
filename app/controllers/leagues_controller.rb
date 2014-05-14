class LeaguesController < ApplicationController

  def new
    @league = League.new
  end

  def show
    @league = League.find(params[:id])
    @sport = Sport.find(params[:id])
  end

  def index
    @leagues = League.all
  end

end
