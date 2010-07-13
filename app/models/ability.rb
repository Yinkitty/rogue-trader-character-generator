class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new(:role_id => Role.find_by_name("Guest").id)
    
    if user.role.name == 'Admin'
      can :manage, :all
    else
      if user.role.name == 'Registered'
        can :read, :all
        can :create, Character
        can :update, Character do |character|
          character.user.try(:id) == user.id
        end
        can :destroy, Character do |character|
          character.user.try(:id) == user.id
        end
      else
        can :read, :all
      end
    end  
  end
end
