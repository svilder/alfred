class ToDoListPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    record.user == user
  end

  def create?
    true
  end

  def update?
    # record.user == user
    true
  end

  def destroy?
    # record.user == user
    true
  end
end
