Rails.application.routes.draw do
  resources :bibliographies, only: [:index, :new, :create, :show, :edit, :update]
  resources :collections, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: [:index, :new, :create, :show, :edit, :update]
  resources :user_statuses, only: [:index, :new, :create, :show, :edit, :update]
  resources :loans, only: [:index, :new, :create, :show, :edit, :updatei, :destroy]
  resources :loan_histories, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
