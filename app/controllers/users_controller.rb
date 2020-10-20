class UsersController < ApplicationController
  def edit_color_preference
    @user = current_user
    authorize @user
    if @user.update_attribute(:color_preference, params[:color_preference])
      redirect_to request.referrer, notice: "Colors in your eyes !"
    else
      redirect_to request.referrer, notice: "Something went wrong"
    end
  end
end
