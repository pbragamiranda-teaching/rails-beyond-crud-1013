Rails.application.routes.draw do
  resources :restaurants do

    resources :reviews, only: [ :new, :create ]

    collection do
      # get :top
      get "top", to: "restaurants#top", as: "paul"
    end

    member do
      get :chef
    end
  end

  resources :reviews, only: [ :destroy ]
end

# get "/restaurants/top", to: "restaurants#top", as: "top_restaurants"
