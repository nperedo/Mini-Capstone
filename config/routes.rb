Rails.application.routes.draw do
  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'

  namespace :api do 
    namespace :v1 do 
      resources :teams
      resources :players
    end 
  end 
end
