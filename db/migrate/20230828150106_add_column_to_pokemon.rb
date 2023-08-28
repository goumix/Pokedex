class AddColumnToPokemon < ActiveRecord::Migration[7.0]
  def change
    add_reference :pokemons, :dresser, foreign_key: true, index: true, optional: true
  end
end
