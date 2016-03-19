class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    	if user.admin?
    		can :manage, :all
    	else 
    can :manage, User, id: user.id
    can :create, Comment
    can :destroy, Comment, user_id: user.id
    can :read, Product
  end
end
end

