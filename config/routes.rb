Rails.application.routes.draw do
  get 'bibliography/index'
  get 'bibliography/new'
  post 'bibliography/create'
  get 'bibliography/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
