class LeaguesController < ApplicationController

  def new
    @league = League.new
  end

  def show
    @league = League.find(params[:id])
  end

  def index
    @leagues = League.all
  end

end
