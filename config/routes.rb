Rails.application.routes.draw do
  root to: 'pokemons#index'
  get '/pokemons/filter', to: 'pokemons#filter', as: :pokemon_filter
  resources :pokemons, only: [:index, :show]
  resources :dressers, only: [:index, :show]
end
