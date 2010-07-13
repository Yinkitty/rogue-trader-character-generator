class OriginPathStagesController < ApplicationController

  load_and_authorize_resource

  def index
    @origin_path_stages = OriginPathStage.all
  end
  
  def show
  end
  
  def new
  end
  
  def create
    if @origin_path_stage.save
      flash[:notice] = "Successfully created origin path stage."
      redirect_to @origin_path_stage
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @origin_path_stage.update_attributes(params[:origin_path_stage])
      flash[:notice] = "Successfully updated origin path stage."
      redirect_to @origin_path_stage
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @origin_path_stage.destroy
    flash[:notice] = "Successfully destroyed origin path stage."
    redirect_to origin_path_stages_url
  end
end
