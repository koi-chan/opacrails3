Rails.application.routes.draw do
  resources :bibliographies, only: [:index, :new, :create, :show, :edit, :update]
  resources :collections, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: [:index, :new, :create, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
