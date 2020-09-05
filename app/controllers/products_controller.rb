class ProductsController < ApplicationController
  before_action :set_product, only: %i(edit update destroy)

  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "#{@product.name}を登録しました。"
      redirect_to products_url
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    if @product.update_attributes(product_params)
      flash[:success] = "#{@product.name}を編集しました。"
      redirect_to products_url
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    flash[:danger] = "#{@product.name}を削除しました。"
    redirect_to products_url
  end

  private

    def product_params
      params.require(:product).permit(:name, :serial, :url)
    end

    def set_product
      @product = Product.find(params[:id])
    end
end
