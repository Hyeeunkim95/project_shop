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
  get 'home/viplists' => 'home#viplists'
  get 'home/index' => 'home#index'

  get 'users/show/:id' => 'users#show'
  get 'home/search'
  root 'home#index'
  get 'home/index/:search_text' => 'home#index'
  
  resources :posts, except:[:show]
end
