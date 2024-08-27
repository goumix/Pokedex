# Pokedex

<img width="1000" alt="pokedex" src="https://github.com/user-attachments/assets/fef53ae8-5c63-45ab-8ecd-bf1ef185f433">

## Introduction

Welcome to my **Pokedex**, a Ruby on Rails application that allows users to explore and interact with the first generation of Pokémon. This project uses PokéAPI, a public API that provides data about Pokémon.

## Features

- **View Pokémon Details**: Users can browse a list of Pokémon, view their attributes (height, weight, types), and view their official artwork and shiny version.

- **Trainer Profiles**: Explore the profiles of various Pokémon trainers, called Trainers, each with a unique team of Pokémon.

- **Pokémon Cards**: Each Pokémon can have an associated trading card image that users can view.

## Getting Started

### Prerequisites

Make sure you have the following installed:

- Ruby (version 2.7.0 or later)
- Rails (version 6.0 or later)
- PostgreSQL (for database management)
- Bundler

### Installation

1. **Clone the repository**:
```bash
git clone https://github.com/your-username/pokedex-project.git
cd pokedex-project
```

2. **Install dependencies**:
```bash
bundle install
```

3. **Configure the database**:
Create and migrate the database:
```bash
rails db:create
rails db:migrate
```

4. **Boot the database**:
Populate the database with Pokémon and Trainers by running the script seed:
```bash
rails db:seed
```

### Running the application

Start the Rails server:
```bash
rails server
```

Visit `http://localhost:3000` in your browser to view the application.

## Templates

### Pokémon (`Pokemon`)
- **name** : Name of the Pokémon.
- **height** : Height of the Pokémon.
- **weight** : Weight of the Pokémon.
- **types** : Types (e.g. Fire, Water) associated with the Pokémon.
- **url** : URL to the official Pokémon artwork.
- **shiny_url** : URL to the shiny version of the official artwork.
- **pokedex_numero** : Unique Pokedex number of the Pokémon.
- **card_url** : URL to the Pokémon trading card image.
- **dresser_id** : ID linking the Pokémon to a specific Dresser.

### Dresser (`Dresser`)
- **name** : Name of the dresser.
- **description** : Description of the dresser.
- **url** : URL of the dresser image.
