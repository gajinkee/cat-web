Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # get 'posts/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/posts", to: "posts#index"
  # get "/posts/:id", to: "posts#show"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "posts#index"

  scope :users, shallow: true do
    resources :posts do
      resources :comments #comments is a nested resource in posts
    end
  end
end