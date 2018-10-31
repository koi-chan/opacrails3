Rails.application.routes.draw do
  root 'welcome#index'

  resources :bibliographies, only: %i(index new create show edit update)
  resources :publishers, only: %i(index new create show edit update)
  resources :collections, only: %i(index new create show edit update)
  resources :users, only: %i(index new create show edit update)
  resources :user_statuses, only: %i(index new create show edit update)
  resources :loans, only: %i(index new create show edit update destroy)
  resources :loan_histories, only: %i(index show)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
