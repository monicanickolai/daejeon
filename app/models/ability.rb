class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    	if user.admin?
    		can :manage, :all
        can :manage, User
        can :manage, Comment
    	else
    can :manage, Product 
    can :manage, User, id: user.id
    can [:edit, :update, :destroy], Product, user_id: user.id
    can :destroy, Comment, user_id: user.id
    can :read, :all
  end
end
end

