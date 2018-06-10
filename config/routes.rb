Rails.application.routes.draw do
  resources :popular_tvshows, only: [:index]
  resources :tvshows, only: [:index, :create, :show]

  root 'popular_tvshows#index'
end
