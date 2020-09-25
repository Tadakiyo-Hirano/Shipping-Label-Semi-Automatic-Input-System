class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user! # 追記 (userの部分はmodel名)

  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource)
    parts_lists_path
  end 
  
  #ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource)
    new_user_session_path
  end
end
