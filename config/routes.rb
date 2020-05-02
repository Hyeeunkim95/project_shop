Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :follows, only:[:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home/userlists' => 'home#userlists'
  get '/users/show/:id' => 'users#show'
  root 'home#index'
end
