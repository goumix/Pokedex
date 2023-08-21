Rails.application.routes.draw do
  root to: 'pokemons#index'
  get '/pokemons/filter', to: 'pokemons#filter', as: :pokemon_filter
  get '/pokemons/:id', to: 'pokemons#show', as: :pokemon
end
