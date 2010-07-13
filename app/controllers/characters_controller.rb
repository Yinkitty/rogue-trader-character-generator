class CharactersController < ApplicationController

  load_and_authorize_resource

  def index
    @characters = Character.all
  end
  
  def show
  end
  
  def new
    @character.user_id = current_user.id
    @character.weapon_skill = Character.generate_stat
    @character.ballistic_skill = Character.generate_stat
    @character.strength = Character.generate_stat
    @character.toughness = Character.generate_stat
    @character.agility = Character.generate_stat
    @character.intelligence = Character.generate_stat
    @character.perception = Character.generate_stat
    @character.will_power = Character.generate_stat
    @character.fellowship = Character.generate_stat
  end
  
  def create
    if @character.save
      flash[:notice] = "Successfully created character."
      redirect_to @character
    else
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @character.update_attributes(params[:character])
      flash[:notice] = "Successfully updated character."
      redirect_to @character
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @character.destroy
    flash[:notice] = "Successfully destroyed character."
    redirect_to characters_url
  end
end
