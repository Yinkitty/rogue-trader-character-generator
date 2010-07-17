class CareersController < ApplicationController

  load_and_authorize_resource

  def index
    @careers = Career.all
  end
  
  def show
  end
  
  def new
  end
  
  def create
    if @career.save
      flash[:notice] = "Successfully created career."
      redirect_to @career
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @career.update_attributes(params[:career])
      flash[:notice] = "Successfully updated career."
      redirect_to @career
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @career.destroy
    flash[:notice] = "Successfully destroyed career."
    redirect_to careers_url
  end
end
