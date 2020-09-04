class PartsListsController < ApplicationController
  def index
    @products = Product.all
  end
end
