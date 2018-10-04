Rails.application.routes.draw do

  resources :categories
  devise_for :views
  devise_for :users
  root 'pages#index'
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
