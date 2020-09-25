class UsersController < ApplicationController
  before_action :authenticate_admin!, only: %i(index destroy) # 追記 (userの部分はmodel名)
  before_action :authenticate_user!, only: %i(show)

  def index
    @users = User.all.order(created_at: :desc)
  end

  def show
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:alert] = "#{@user.email}を削除しました。"
    redirect_to users_url
  end
end
