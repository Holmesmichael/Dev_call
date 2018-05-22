class Ability
  include CanCan::Ability

  def initialize(user)
    
      user ||= User.new 
      if user.admin?
        can :manage, :all
      else
        can :create, Event do |event|
          event.user == user
        end
        can :edit, Event do |event|
          event.user == user
        end
        can :destroy, Event do |event|
          event.user == user
        end
        can :create, Event
        can :read, :all

      end
    
  end
end
