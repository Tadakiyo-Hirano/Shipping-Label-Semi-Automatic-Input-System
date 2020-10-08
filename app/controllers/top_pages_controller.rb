class TopPagesController < ApplicationController
  before_action :authenticate_user! # 追記 (userの部分はmodel名)

  def top
  end
end
