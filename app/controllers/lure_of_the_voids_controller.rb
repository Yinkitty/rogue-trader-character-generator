class LureOfTheVoidsController < ApplicationController
  def index
    @lure_of_the_voids = LureOfTheVoid.all
  end
  
  def show
    @lure_of_the_void = LureOfTheVoid.find(params[:id])
  end
  
  def new
    @lure_of_the_void = LureOfTheVoid.new
  end
  
  def create
    @lure_of_the_void = LureOfTheVoid.new(params[:lure_of_the_void])
    if @lure_of_the_void.save
      flash[:notice] = "Successfully created lure of the void."
      redirect_to @lure_of_the_void
    else
      render :action => 'new'
    end
  end
  
  def edit
    @lure_of_the_void = LureOfTheVoid.find(params[:id])
  end
  
  def update
    @lure_of_the_void = LureOfTheVoid.find(params[:id])
    if @lure_of_the_void.update_attributes(params[:lure_of_the_void])
      flash[:notice] = "Successfully updated lure of the void."
      redirect_to @lure_of_the_void
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @lure_of_the_void = LureOfTheVoid.find(params[:id])
    @lure_of_the_void.destroy
    flash[:notice] = "Successfully destroyed lure of the void."
    redirect_to lure_of_the_voids_url
  end
end
