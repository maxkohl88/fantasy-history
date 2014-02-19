class TeamsController < ApplicationController

  def new
    @team = Team.find(params[:id])
  end
end
