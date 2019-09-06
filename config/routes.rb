Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :projects, :todos

      post 'signup', to: 'users#create'
      post 'auth/login', to: 'authentication#authenticate'
      post 'find_user', to: 'users#find'

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
