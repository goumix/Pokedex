class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all.sort
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR CAST(numero_pokedex AS TEXT) ILIKE :query"
      @pokemons = Pokemon.all.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end
end
