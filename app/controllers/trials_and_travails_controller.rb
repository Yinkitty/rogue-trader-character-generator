class TrialsAndTravailsController < ApplicationController

  load_and_authorize_resource

  def index
    @trials_and_travails = TrialsAndTravails.all
  end
  
  def show
  end
  
  def new
  end
  
  def create
    if @trials_and_travails.save
      flash[:notice] = "Successfully created trials and travails."
      redirect_to @trials_and_travails
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @trials_and_travails.update_attributes(params[:trials_and_travails])
      flash[:notice] = "Successfully updated trials and travails."
      redirect_to @trials_and_travails
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @trials_and_travails.destroy
    flash[:notice] = "Successfully destroyed trials and travails."
    redirect_to trials_and_travails_url
  end
end
