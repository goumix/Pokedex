Rails.application.routes.draw do
  root to: 'pokemons#index'
  get '/pokemons/:id', to: 'pokemons#show', as: :pokemon
end
