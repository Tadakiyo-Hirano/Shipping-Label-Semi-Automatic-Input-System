Rails.application.routes.draw do
  devise_for :users,
  controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations",
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  # devise_for :users, 
  #   controllers: { 
  #     mniauth_callbacks: 'users/omniauth_callbacks'
  #   }

  root 'top_pages#top'
  resources :parts_lists, only: %i(index)
  resources :products
end
