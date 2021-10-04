Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user, only: [:index, :show, :create]
      resources :territories, only: [:index, :show]
      resources :checkout, only: [:index, :show]
      resources :address, only: [:index, :show]

      post '/signup', to: 'users#create'
      post '/login', to: 'auth#create'
      get '/persist', to: 'auth#show'
    end
  end
end
