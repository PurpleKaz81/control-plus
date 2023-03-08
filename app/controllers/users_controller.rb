class UsersController < ApplicationController
  def destroy
    @user = current_user
    @user.destroy
    # redirect_to root_url(confirm: 'delete') if @user.destroy
    redirect_back(fallback_location: root_url(confirm: 'delete'), allow_other_host: false) if @user.destroy
  end
end
