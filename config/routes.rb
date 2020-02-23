Rails.application.routes.draw do
  root to: 'beers#index'
  get "/search/results", to: "beers#results"
  get "/search/results/:id", to: "beers#add_ba"

  resources :beers do
    resources :beer_hops, only: [:new, :create]
  end
  resources :beer_hops, only: :destroy
end
