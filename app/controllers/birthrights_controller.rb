class BirthrightsController < ApplicationController
  def index
    @birthrights = Birthright.all
  end
  
  def show
    @birthright = Birthright.find(params[:id])
  end
  
  def new
    @birthright = Birthright.new
  end
  
  def create
    @birthright = Birthright.new(params[:birthright])
    if @birthright.save
      flash[:notice] = "Successfully created birthright."
      redirect_to @birthright
    else
      render :action => 'new'
    end
  end
  
  def edit
    @birthright = Birthright.find(params[:id])
  end
  
  def update
    @birthright = Birthright.find(params[:id])
    if @birthright.update_attributes(params[:birthright])
      flash[:notice] = "Successfully updated birthright."
      redirect_to @birthright
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @birthright = Birthright.find(params[:id])
    @birthright.destroy
    flash[:notice] = "Successfully destroyed birthright."
    redirect_to birthrights_url
  end
end
