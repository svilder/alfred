class LongNotePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def show?
    record.publicly_displayed || user_is_owner?
  end

  def create?
    true
  end

  def set_public?
    user_is_owner?
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end
end
