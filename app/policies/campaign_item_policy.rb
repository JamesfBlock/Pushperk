class CampaignItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
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
