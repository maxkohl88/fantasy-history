class OwnersController < ApplicationController

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(params[:owner].permit(:name, :year, :wins, :losses, :title))
    @owner.save

    if @owner.save
      redirect_to @owner
    else
      render 'new'
    end
  end

  def show
    @owners = Owner.all
  end
end
