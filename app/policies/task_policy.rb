class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    true
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

  def done?
    user_is_owner?
  end

  private

  def user_is_owner?
    record.to_do_list.user == user
  end
end
