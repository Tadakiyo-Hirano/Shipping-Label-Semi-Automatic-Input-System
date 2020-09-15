class UsersController < ApplicationController

  def index
    @users = User.all.order(created_at: :desc)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:alert] = "#{@user.email}を削除しました。"
    redirect_to users_url
  end
end
