Rails.application.routes.draw do

  resources :follows
  resources :comments
  resources :categories
  resources :posts

  resources :users do
    resources :posts do
      resources :comments
    end
  end

   resources :users do
    resources :conversations do
      resources :messages
    end
  end

  # root to: 'messages#root'
  mount ActionCable.server, at: '/cable'

  post '/login', to: 'auth#create'
  post '/signup',to: 'users#create'
  get '/reAuth', to: 'auth#re_auth'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
