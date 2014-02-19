class RankingsController < ApplicationController

  def new
    @ranking = Ranking.new
  end

  def create
    @ranking = Ranking.new(params[:ranking].permit(:name, :number_of_teams))
    
    if @ranking.save
     redirect_to @ranking
    else
     render new 
    end
  end
end
