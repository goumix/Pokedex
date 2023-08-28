class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all.sort
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end
end
