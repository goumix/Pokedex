class AddColumnToPokemonNumero < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :numero_pokedex, :integer
  end
end
