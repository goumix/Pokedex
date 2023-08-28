class DressersController < ApplicationController
  def index
    @dressers = Dresser.all
  end

  def show
    @dresser = Dresser.find(params[:id])
    @pokemons = Pokemon.where(dresser_id: params[:id])
  end
end
