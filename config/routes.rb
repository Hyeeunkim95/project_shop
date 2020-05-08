  Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/create'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/destroy'
  get 'users/show'
  devise_for :users
  resources :follows, only:[:create, :destroy]
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/userlists' => 'home#userlists'
  get 'home/followerlists' => 'home#followerlists'
  get 'home/viplists' => 'home#viplists'
  get 'home/index' => 'home#index'
  
  get 'users/show/:id' => 'users#show'
  get 'posts/create/:id' => 'users#show'
  
  post 'posts/create/:id' => 'users#show#id'
  
  get 'home/search'
  root 'home#index'
  get 'home/index/:search_text' => 'home#index'
  resources :posts, except:[:show]
  
  get 'posts/new/:following_id' => 'posts#new'
  
  post 'create' => "posts#create"
  post 'update' => "posts#update"
  
  post "edit" => "posts#edit"
  get "posts/edit/:id" => "posts#edit"
  post "posts/update/:id" => "posts#update"
  
  get "posts/show/:id" => "posts#show"
end
  

