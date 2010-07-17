class TrialsAndTravailsController < ApplicationController
  def index
    @trials_and_travails = TrialsAndTravails.all
  end
  
  def show
    @trials_and_travails = TrialsAndTravails.find(params[:id])
  end
  
  def new
    @trials_and_travails = TrialsAndTravails.new
  end
  
  def create
    @trials_and_travails = TrialsAndTravails.new(params[:trials_and_travails])
    if @trials_and_travails.save
      flash[:notice] = "Successfully created trials and travails."
      redirect_to @trials_and_travails
    else
      render :action => 'new'
    end
  end
  
  def edit
    @trials_and_travails = TrialsAndTravails.find(params[:id])
  end
  
  def update
    @trials_and_travails = TrialsAndTravails.find(params[:id])
    if @trials_and_travails.update_attributes(params[:trials_and_travails])
      flash[:notice] = "Successfully updated trials and travails."
      redirect_to @trials_and_travails
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @trials_and_travails = TrialsAndTravails.find(params[:id])
    @trials_and_travails.destroy
    flash[:notice] = "Successfully destroyed trials and travails."
    redirect_to trials_and_travails_url
  end
end
