class LureOfTheVoidsController < ApplicationController

  load_and_authorize_resource

  def index
    @lure_of_the_voids = LureOfTheVoid.all
  end
  
  def show
  end
  
  def new
  end
  
  def create
    if @lure_of_the_void.save
      flash[:notice] = "Successfully created lure of the void."
      redirect_to @lure_of_the_void
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @lure_of_the_void.update_attributes(params[:lure_of_the_void])
      flash[:notice] = "Successfully updated lure of the void."
      redirect_to @lure_of_the_void
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @lure_of_the_void.destroy
    flash[:notice] = "Successfully destroyed lure of the void."
    redirect_to lure_of_the_voids_url
  end
end
