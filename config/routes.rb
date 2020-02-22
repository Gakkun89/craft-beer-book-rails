Rails.application.routes.draw do
  root to: 'beers#index'
  resources :beers do
    resources :beer_hops, only: [:new, :create]
  end
  resources :beer_hops, only: :destroy
end
