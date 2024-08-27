# Pokedex Project - README

## Introduction

Welcome to the **Pokedex Project**, a Ruby on Rails application that allows users to explore and interact with a database of Pokémon. The project is designed to replicate a traditional Pokédex, featuring various Pokémon and their associated trainers (referred to as "Dressers"). The application pulls Pokémon data from an external API and associates each Pokémon with a specific dresser.

## Features

- **View Pokémon Details**: Users can browse through a list of Pokémon, view their attributes (height, weight, types), and see their official artwork and shiny version.
- **Trainer Profiles**: Explore profiles of various Pokémon trainers, known as Dressers, each with a unique team of Pokémon.
- **Pokémon Cards**: Each Pokémon can have an associated collectible card image that users can view.

## Getting Started

### Prerequisites

Ensure that you have the following installed:

- Ruby (version 2.7.0 or later)
- Rails (version 6.0 or later)
- PostgreSQL (for database management)
- Bundler

### Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/pokedex-project.git
   cd pokedex-project
   ```

2. **Install Dependencies**:
   ```bash
   bundle install
   ```

3. **Set Up the Database**:
   Create and migrate the database:
   ```bash
   rails db:create
   rails db:migrate
   ```

4. **Seed the Database**:
   Populate the database with Pokémon and Dressers by running the seed script:
   ```bash
   rails db:seed
   ```

### Running the Application

Start the Rails server:
```bash
rails server
```

Visit `http://localhost:3000` in your browser to view the application.

## Seed Data Explanation

The `db/seeds.rb` file is used to populate the database with initial data. Here's a breakdown of what the script does:

1. **Cleaning the Database**: The script starts by clearing existing records in the `Pokemon` and `Dresser` models.

2. **Creating Dressers**: Several Dressers (trainers) are created, each with a unique name, description, and image URL.

3. **Fetching Pokémon Data**: The script fetches the first 151 Pokémon from the PokéAPI. For each Pokémon, their name, height, weight, types, and official artwork URLs are saved in the database.

4. **Linking Pokémon to Dressers**: Certain Pokémon are assigned to specific Dressers based on predefined lists.

5. **Adding Pokémon Card URLs**: For select Pokémon, a URL to their collectible card image is added.

## Models

### Pokémon (`Pokemon`)
- **name**: Name of the Pokémon.
- **height**: Height of the Pokémon.
- **weight**: Weight of the Pokémon.
- **types**: Types (e.g., Fire, Water) associated with the Pokémon.
- **url**: URL to the official artwork of the Pokémon.
- **url_shiny**: URL to the shiny version of the official artwork.
- **numero_pokedex**: The Pokémon's unique Pokédex number.
- **url_card**: URL to the Pokémon's collectible card image.
- **dresser_id**: ID linking the Pokémon to a specific Dresser.

### Dresser (`Dresser`)
- **name**: Name of the Dresser.
- **description**: Description of the Dresser.
- **url**: URL to the Dresser's image.

## Contributing

If you wish to contribute to the project, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- **PokéAPI**: For providing a comprehensive API to fetch Pokémon data.
- **Poképedia**: For images and detailed descriptions of trainers.

Feel free to customize this `README` to better fit the specifics of your project!
