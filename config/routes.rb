Rails.application.routes.draw do

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  
  root 'top_pages#top'
  resources :parts_lists, only: %i(index)
  resources :products
end
