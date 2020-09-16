class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
        scope.all
    end
  end

  def index?
   true
  end

   def create?
    true
   end

  def show?
  (user.isAdmin || user.id == record.ordered_by_id) && record.status != 'Complete'   end

   def update?
  (user.isAdmin || user.id == record.ordered_by_id) && record.status != 'Complete'   end

   def destroy?
   end
end


