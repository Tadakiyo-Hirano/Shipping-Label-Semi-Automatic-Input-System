Rails.application.routes.draw do

  devise_for :admins, skip: [:registration], controllers: {
    sessions: 'admins/sessions'
  }

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  resources :users, only: %i(index show destroy)

  # ログアウト用
  # devise_scope :users do
  #   delete :sign_out, to: 'devise/sessions#destroy', as: :destroy_user_session
  # end
  
  root 'top_pages#top'
  resources :parts_lists, only: %i(index)
  resources :products
  resources :markets, only: %i(index edit update)
end
