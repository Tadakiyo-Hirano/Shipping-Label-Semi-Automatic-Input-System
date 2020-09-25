class PartsListsController < ApplicationController
  before_action :user_and_admin_signed_in?
  
  def index
    @products = Product.all
    if params[:name].present?
      @products = Product.where('name LIKE ?', "%#{params[:name]}%")
    else
      @products = Product.all.page(params[:page])
    end
  end
end

private

  def user_and_admin_signed_in?
    unless user_signed_in? || admin_signed_in?
      redirect_to new_user_session_path
    end
  end
