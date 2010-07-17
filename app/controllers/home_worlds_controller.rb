class HomeWorldsController < ApplicationController

  load_and_authorize_resource

  def index
    @home_worlds = HomeWorld.all
  end
  
  def show
  end
  
  def new
  end
  
  def create
    if @home_world.save
      flash[:notice] = "Successfully created home world."
      redirect_to @home_world
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @home_world.update_attributes(params[:home_world])
      flash[:notice] = "Successfully updated home world."
      redirect_to @home_world
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @home_world.destroy
    flash[:notice] = "Successfully destroyed home world."
    redirect_to home_worlds_url
  end
end
