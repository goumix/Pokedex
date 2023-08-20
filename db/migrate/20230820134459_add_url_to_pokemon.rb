class AddUrlToPokemon < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :url, :string
    add_column :pokemons, :url_shiny, :string
  end
end
