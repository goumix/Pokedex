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
Dresser.destroy_all
puts 'Database cleaned'


puts 'Create dressers...'
Dresser.create!(name: 'Sacha', description: "Sacha Ketchum est le personnage principal de Pokémon, la série, et de divers mangas basés sur l'anime. C'est un Dresseur Pokémon originaire de Bourg Palette qui rêve de devenir Maître Pokémon.", url: 'https://www.pokepedia.fr/images/thumb/a/ae/Sacha-Anim%C3%A9_LV.png/350px-Sacha-Anim%C3%A9_LV.png')
Dresser.create!(name: 'Olga', description: "Olga est membre du Conseil 4 de la Ligue Indigo. Elle est spécialisée dans les Pokémon et les attaques Glace.", url: 'https://www.pokepedia.fr/images/thumb/1/19/Olga-LGPE.png/500px-Olga-LGPE.png')
Dresser.create!(name: 'Aldo', description: "Aldo est membre du Conseil 4 de la Ligue Indigo. Il est spécialisé dans les Pokémon Combat.", url: 'https://www.pokepedia.fr/images/thumb/4/42/Aldo-LGPE.png/1200px-Aldo-LGPE.png')
Dresser.create!(name: 'Agatha', description: "Agatha est membre du Conseil 4 de la Ligue Indigo. Spécialisée dans les Pokémon Spectre, son équipe est majoritairement composée de Pokémon possédant une apparence effrayante ou intimidante.", url: 'https://www.pokepedia.fr/images/thumb/8/8b/Agatha-LGPE.png/500px-Agatha-LGPE.png')
Dresser.create!(name: 'Peter', description: "Peter est un membre éminent du Conseil 4 de la Ligue Indigo, dont il a fini par prendre la tête en tant que Maître. Il est spécialisé dans les Pokémon de type Dragon, bien qu'il utilise majoritairement des Pokémon de type Vol.", url: 'https://www.pokepedia.fr/images/thumb/e/e3/Peter-LGPE.png/500px-Peter-LGPE.png')
Dresser.create!(name: 'Blue', description: "Blue est le petit-fils du Professeur Chen, mais aussi et surtout le rival du protagoniste dans Pokémon Rouge, Bleu et Jaune et Pokémon Rouge Feu et Vert Feuille. Parmi les personnages les plus anciens et les plus récurrents de la licence, ce Dresseur est reconnaissable à sa coiffure ébouriffée.", url: 'https://www.pokepedia.fr/images/thumb/8/87/Blue-LGPE.png/350px-Blue-LGPE.png')
puts 'Dressers created!'

puts 'Create pokemons...'
url = 'https://pokeapi.co/api/v2/pokemon?offset=0&limit=151'
pokemons = []
JSON.parse(URI.open(url.to_s).read)['results'].each do |pokemon|
  pokemons << pokemon['name']
end
p pokemons
pokemons.each do |pokemon|
  poke = JSON.parse(URI.open("https://pokeapi.co/api/v2/pokemon/#{pokemon}").read)
  poke_type = []
  poke['types'].each { |t| poke_type << t['type']['name'] }
  Pokemon.create(
    name: pokemon,
    height: poke['height'],
    weight: poke['weight'],
    types: poke_type,
    url: poke['sprites']['other']['official-artwork']['front_default'],
    url_shiny: poke['sprites']['other']['official-artwork']['front_shiny'],
    numero_pokedex: poke['id']
  )
end
puts 'Pokemons created!'

puts 'Link pokemon with dresser!'
sacha_pokemons = ['pikachu', 'charizard', 'pidgeot', 'primeape', 'muk', 'tauros']
olga_pokemons = ['dewgong', 'cloyster', 'lapras']
aldo_pokemons = ['onix', 'machamp', 'hitmonlee', 'hitmonchan']
agatha_pokemons = ['gengar', 'golbat', 'arbok']
peter_pokemons = ['gyarados', 'seadra', 'dragonite', 'aerodactyl']
blue_pokemons = ['pinsir', 'alakazam', 'exeggutor', 'arcanine', 'blastoise']

dressers_pokemons = [sacha_pokemons, olga_pokemons, aldo_pokemons, agatha_pokemons, peter_pokemons, blue_pokemons]
i = 0
dressers_pokemons.each do |dresser_pokemons|
  dresser_pokemons.each do |pokemon|
    poke = Pokemon.find_by(name: pokemon)
    dresser = Dresser.find_by(name: 'Sacha').id + i
    poke.update(dresser_id: dresser)
    poke.save!
  end
  i += 1
end
puts 'Pokemon linked!'
