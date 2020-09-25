# frozen_string_literal: true

class Admins::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource)
    users_path
  end 
  
  #ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource)
    new_admin_session_path
  end

  # GET /resource/sign_in
  def new
    if user_signed_in?
      redirect_to parts_lists_url
      flash.now[:alert] = "すでにログインしています。"
    else
      super
    end
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
