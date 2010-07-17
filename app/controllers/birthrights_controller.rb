class BirthrightsController < ApplicationController

  load_and_authorize_resource

  def index
    @birthrights = Birthright.all
  end
  
  def show
  end
  
  def new
  end
  
  def create
    if @birthright.save
      flash[:notice] = "Successfully created birthright."
      redirect_to @birthright
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @birthright.update_attributes(params[:birthright])
      flash[:notice] = "Successfully updated birthright."
      redirect_to @birthright
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @birthright.destroy
    flash[:notice] = "Successfully destroyed birthright."
    redirect_to birthrights_url
  end
end
