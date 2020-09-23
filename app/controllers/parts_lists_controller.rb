class PartsListsController < ApplicationController
  before_action :authenticate_user! # 追記 (userの部分はmodel名)
  
  def index
    @products = Product.all
    if params[:name].present?
      @products = Product.where('name LIKE ?', "%#{params[:name]}%")
    else
      @products = Product.all.page(params[:page])
    end
  end
end
