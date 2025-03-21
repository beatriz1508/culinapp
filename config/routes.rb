Rails.application.routes.draw do
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :paths do
    resources :journeys, only: :create
  end

  resources :worlds
  resources :tasks, only: [:show, :update] do
    member do
      get :completed
    end
    resources :reviews, only: :create
  end

  resource :profiles, only: :show, as: :user_root
  resources :reviews, only: [:show, :update]
  get "ranking", to: "profiles#ranking", as: :ranking

  get 'quiz', to: 'quiz#show'
  get 'quiz/score', to: 'quiz#score'
  post 'quiz/result', to: 'quiz#result'

  # Defines the root path route ("/")
  root "paths#index"
end
