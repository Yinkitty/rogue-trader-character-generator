class OriginPathsController < ApplicationController

  load_and_authorize_resource

  def index
    @origin_paths = OriginPath.all
  end
  
  def show
  end
  
  def new
  end
  
  def create
    if @origin_path.save
      flash[:notice] = "Successfully created origin path."
      redirect_to @origin_path
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @origin_path.update_attributes(params[:origin_path])
      flash[:notice] = "Successfully updated origin path."
      redirect_to @origin_path
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @origin_path.destroy
    flash[:notice] = "Successfully destroyed origin path."
    redirect_to origin_paths_url
  end
end
