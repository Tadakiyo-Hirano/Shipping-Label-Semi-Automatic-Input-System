Rails.application.routes.draw do
  root 'top_pages#top'
  resources :issue_regs, only: %i(index)
end
