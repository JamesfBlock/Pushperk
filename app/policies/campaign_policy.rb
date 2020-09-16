class CampaignPolicy < ApplicationPolicy
  class Scope < Scope
    #called for index action
    def resolve
      #allowing all restaurants (scope == Campaign)
      scope.where(user_id: user.id)
    end
  end

   def create?
      true
   end

   def show?
      true
   end

   def edit?
      #is current user owner of the restuarant?
     user.id == record.user_id
   end

   def update?
      #is current user owner of the restuarant?
      user.id == record.user_id
   end
end
