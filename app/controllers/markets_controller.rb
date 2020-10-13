class MarketsController < ApplicationController

  def index
    @markets = Market.all
  end

  def edit
    @market = Market.find(params[:id])
  end

  def update
    @market = Market.find(params[:id])
    if @market.update_attributes(market_params)
      flash[:notice] = "#{@market.name}を編集しました。"
      redirect_to markets_url
    else
      flash[:alert] = @market.errors.full_messages.join("<br>").html_safe
      render :edit
    end
  end

  private
  
    def market_params
      params.require(:market).permit(:name, :code)
    end
end
