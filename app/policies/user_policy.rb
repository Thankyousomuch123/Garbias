class UserPolicy < ApplicationPolicy
  def admin_dashboard?
    user.admin?
  end

  def user_dashboard?
    !user.admin?
  end
end
