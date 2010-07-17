class MotivationsController < ApplicationController
  def index
    @motivations = Motivation.all
  end
  
  def show
    @motivation = Motivation.find(params[:id])
  end
  
  def new
    @motivation = Motivation.new
  end
  
  def create
    @motivation = Motivation.new(params[:motivation])
    if @motivation.save
      flash[:notice] = "Successfully created motivation."
      redirect_to @motivation
    else
      render :action => 'new'
    end
  end
  
  def edit
    @motivation = Motivation.find(params[:id])
  end
  
  def update
    @motivation = Motivation.find(params[:id])
    if @motivation.update_attributes(params[:motivation])
      flash[:notice] = "Successfully updated motivation."
      redirect_to @motivation
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @motivation = Motivation.find(params[:id])
    @motivation.destroy
    flash[:notice] = "Successfully destroyed motivation."
    redirect_to motivations_url
  end
end
