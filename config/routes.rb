Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :user, only: [:index, :show]
      resources :territory, only: [:index, :show]
      resources :checkout, only: [:index, :show]
      resources :address, only: [:index, :show]
    end
  end
end
