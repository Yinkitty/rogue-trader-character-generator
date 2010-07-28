class CharactersController < ApplicationController

  load_and_authorize_resource

  def index
    @characters = Character.all
  end
  
  def show
  end
  
  def new
    session[:character_params] = {}
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
    session[:character_params].deep_merge!(params[:character]) if params[:character]
    @character = Character.new(session[:character_params])
    @character.current_step = session[:character_step]
    if @character.valid?
      if params[:back_button]
        @character.previous_step
      elsif @character.last_step?
        @character.save if @character.all_valid?
      else
        @character.next_step
      end
    else
      session[:character_step] = @character.current_step
    end
    if @character.new_record?
      render "new"
    else
      session[:character_step] = session[:character_params] = nil
      flash[:notice] = "Character saved"
      redirect_to @character
    end
    session[:character_step] = @character.current_step
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
