Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  # ログアウト用
  # devise_scope :users do
  #   delete :sign_out, to: 'devise/sessions#destroy', as: :destroy_user_session
  # end
  
  root 'top_pages#top'
  resources :parts_lists, only: %i(index)
  resources :products
end
