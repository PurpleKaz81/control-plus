Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  get '/quemsomos', to:'pages#quemsomos'
  get '/recursos', to:'pages#recursos'
  get '/faq', to:'pages#faq'

  resources :tasks

  resources :finances do
    collection do
      get :inflow
      get :outflow
    end
    get "new-outflow", on: :collection
  end
end
