class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "#{@user.email}削除しました。"
    redirect_to root_url
  end
end
