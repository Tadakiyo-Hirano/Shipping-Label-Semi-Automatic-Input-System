class PartsListsController < ApplicationController
  def index
    @products = Product.all
    if params[:name].present?
      @products = Product.where('name LIKE ?', "%#{params[:name]}%")
    else
      @products = Product.all.page(params[:page])
    end
  end
end
