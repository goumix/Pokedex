class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def filter
    params
    @pokemons = Pokemon.where(types: ['fire', 'ice'])
  end
end
