Rails.application.routes.draw do
  get 'products/new'
  root 'top_pages#top'
  resources :parts_lists, only: %i(index)
  resources :products
end
