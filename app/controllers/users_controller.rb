class UsersController < ApplicationController
  def edit_color_preference
    @user = current_user
    raise
    if @user.update_attribute(:color_preference, color_preference)
      notice: "Colors in your eyes !"
    else
      notice: "Something went wrong"
    end
  end
end
