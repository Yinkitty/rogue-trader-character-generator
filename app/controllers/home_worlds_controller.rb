class HomeWorldsController < ApplicationController
  def index
    @home_worlds = HomeWorld.all
  end
  
  def show
    @home_world = HomeWorld.find(params[:id])
  end
  
  def new
    @home_world = HomeWorld.new
  end
  
  def create
    @home_world = HomeWorld.new(params[:home_world])
    if @home_world.save
      flash[:notice] = "Successfully created home world."
      redirect_to @home_world
    else
      render :action => 'new'
    end
  end
  
  def edit
    @home_world = HomeWorld.find(params[:id])
  end
  
  def update
    @home_world = HomeWorld.find(params[:id])
    if @home_world.update_attributes(params[:home_world])
      flash[:notice] = "Successfully updated home world."
      redirect_to @home_world
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @home_world = HomeWorld.find(params[:id])
    @home_world.destroy
    flash[:notice] = "Successfully destroyed home world."
    redirect_to home_worlds_url
  end
end
