class RolesController < ApplicationController

  load_and_authorize_resource

  def index
    @roles = Role.all
  end
  
  def show
  end
  
  def new
  end
  
  def create
    if @role.save
      flash[:notice] = "Successfully created role."
      redirect_to @role
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @role.update_attributes(params[:role])
      flash[:notice] = "Successfully updated role."
      redirect_to @role
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @role.destroy
    flash[:notice] = "Successfully destroyed role."
    redirect_to roles_url
  end
end
