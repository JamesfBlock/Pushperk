class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    user.isAdmin?
  end

  def show?
    user.isAdmin?
  end

  def create?
    user.isAdmin?
  end

  def new?
    create?
  end

  def update?
    user.isAdmin?
  end

  def edit?
    update?
  end

  def destroy?
    user.isAdmin?
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
