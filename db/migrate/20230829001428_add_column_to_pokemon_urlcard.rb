class AddColumnToPokemonUrlcard < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :url_card, :string
  end
end
