class UsersController < ApplicationController
  def destroy
    @user = current_user
    @user.destroy
    redirect_to root_url(confirm: 'delete') if @user.destroy
  end
end
