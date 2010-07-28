class MotivationsController < ApplicationController

  load_and_authorize_resource

  def index
    @motivations = Motivation.all
  end
  
  def show
  end
  
  def new
  end
  
  def create
    if @motivation.save
      flash[:notice] = "Successfully created motivation."
      redirect_to @motivation
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @motivation.update_attributes(params[:motivation])
      flash[:notice] = "Successfully updated motivation."
      redirect_to @motivation
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @motivation.destroy
    flash[:notice] = "Successfully destroyed motivation."
    redirect_to motivations_url
  end
end
