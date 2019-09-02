Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users

      post 'signup', to: 'users#create'
      post 'auth/login', to: 'authentication#authenticate'
      get 'auth/check_token', to: 'authentication#check_token'

      post 'find_user', to: 'users#find'

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
