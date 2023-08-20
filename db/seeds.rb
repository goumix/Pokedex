# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
require 'json'

puts 'Cleaning up database...'
Pokemon.destroy_all
puts 'Database cleaned'

url = 'https://pokeapi.co/api/v2/pokemon?offset=0&limit=151'
pokemons = []
JSON.parse(URI.open("#{url}").read)['results'].each do |pokemon|
  pokemons << pokemon['name']
end
pokemons.each do |pokemon|
  poke = JSON.parse(URI.open("https://pokeapi.co/api/v2/pokemon/#{pokemon}").read)
  Pokemon.create(
    name: pokemon,
    height: poke['height'],
    weight: poke['weight'],
    types: poke['types']
  )
end
puts 'Pokemons created!'
