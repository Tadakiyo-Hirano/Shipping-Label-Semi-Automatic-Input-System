Rails.application.routes.draw do
  root 'top_pages#top'
  resources :parts_lists, only: %i(index)
end
