class CareerPathsController < ApplicationController

  load_and_authorize_resource

  def index
    @career_paths = CareerPath.all
  end
  
  def show
  end
  
  def new
  end
  
  def create
    if @career_path.save
      flash[:notice] = "Successfully created career path."
      redirect_to @career_path
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @career_path.update_attributes(params[:career_path])
      flash[:notice] = "Successfully updated career path."
      redirect_to @career_path
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @career_path.destroy
    flash[:notice] = "Successfully destroyed career path."
    redirect_to career_paths_url
  end
end
