Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }
  match 'users/:id' => 'users#destroy', :via => %i[get delete], :as => :destroy_user
  # match 'users/:id' => 'users#show', as: :user
  # resources :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  get '/quemsomos', to: 'pages#quemsomos'
  get '/recursos', to: 'pages#recursos'
  get '/faq', to: 'pages#faq'

  resources :tasks do
    member do
      patch '/move', to: 'tasks#move'
      patch '/complete', to: 'tasks#complete'
    end
  end

  resources :finances do
    collection do
      get :inflow
      get :outflow
    end
    get 'new-outflow', on: :collection
  end
  get 'finances/:id/edit-outflow', to: 'finances#edit_outflow', as: 'edit_outflow'

  # delete '/users/:id' => 'users#destroy', as: :destroy_user
end
