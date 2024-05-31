# frozen_string_literal: true

namespace :country_films do
  desc "Seed countries for films"
  task country_films: :environment do
    countries = Country.all
    films = Film.all

    country_films_data = [
      # Pretty Woman
      {country_id: countries.find_by(country_name: "United States").id,
       film_id:    films.find_by(title: "Pretty Woman").id},
      # Titanic
      {country_id: countries.find_by(country_name: "United States").id, film_id: films.find_by(title: "Titanic").id},
      {country_id: countries.find_by(country_name: "Mexico").id, film_id: films.find_by(title: "Titanic").id},
      # Avatar
      {country_id: countries.find_by(country_name: "United States").id, film_id: films.find_by(title: "Avatar").id},
      {country_id: countries.find_by(country_name: "United Kingdom").id, film_id: films.find_by(title: "Avatar").id},
      # Don't Look Up
      {country_id: countries.find_by(country_name: "United States").id,
       film_id:    films.find_by(title: "Don't Look Up").id},
      # The Devil Wears Prada
      {country_id: countries.find_by(country_name: "United States").id,
       film_id:    films.find_by(title: "The Devil Wears Prada").id},
      # Mr. & Mrs. Smith
      {country_id: countries.find_by(country_name: "United States").id,
       film_id:    films.find_by(title: "Mr. & Mrs. Smith").id},
      # Lara Croft: Tomb Raider
      {country_id: countries.find_by(country_name: "United States").id,
       film_id:    films.find_by(title: "Lara Croft - Tomb Raider").id},
      {country_id: countries.find_by(country_name: "United Kingdom").id,
       film_id:    films.find_by(title: "Lara Croft - Tomb Raider").id},
      {country_id: countries.find_by(country_name: "Japan").id,
       film_id:    films.find_by(title: "Lara Croft - Tomb Raider").id},
      {country_id: countries.find_by(country_name: "Germany").id,
       film_id:    films.find_by(title: "Lara Croft - Tomb Raider").id},
      # Lara Croft: Tomb Raider – The Cradle of Life
      {country_id: countries.find_by(country_name: "United States").id,
       film_id:    films.find_by(title: "Lara Croft Tomb Raider – The Cradle of Life").id},
      {country_id: countries.find_by(country_name: "United Kingdom").id,
       film_id:    films.find_by(title: "Lara Croft Tomb Raider – The Cradle of Life").id},
      {country_id: countries.find_by(country_name: "Japan").id,
       film_id:    films.find_by(title: "Lara Croft Tomb Raider – The Cradle of Life").id},
      {country_id: countries.find_by(country_name: "Germany").id,
       film_id:    films.find_by(title: "Lara Croft Tomb Raider – The Cradle of Life").id},
      # James Bond 007: Spectre
      {country_id: countries.find_by(country_name: "United Kingdom").id,
       film_id:    films.find_by(title: "James Bond 007-Spectre").id},
      {country_id: countries.find_by(country_name: "United States").id,
       film_id:    films.find_by(title: "James Bond 007-Spectre").id},
      # Jurassic Park
      {country_id: countries.find_by(country_name: "United States").id,
       film_id:    films.find_by(title: "Jurassic Park").id},
      # Terminator
      {country_id: countries.find_by(country_name: "United Kingdom").id,
       film_id:    films.find_by(title: "Terminator").id},
      {country_id: countries.find_by(country_name: "United States").id, film_id: films.find_by(title: "Terminator").id},
      # Beauty and the Beast
      {country_id: countries.find_by(country_name: "United States").id,
       film_id:    films.find_by(title: "Beauty and the Beast").id},
      # Harry Potter and the Philosopher's Stone
      {country_id: countries.find_by(country_name: "United Kingdom").id,
       film_id:    films.find_by(title: "Harry Potter and the Philosopher's Stone").id},
      {country_id: countries.find_by(country_name: "United States").id,
       film_id:    films.find_by(title: "Harry Potter and the Philosopher's Stone").id},
      # Charlie and the Chocolate Factory
      {country_id: countries.find_by(country_name: "United States").id,
       film_id:    films.find_by(title: "Charlie and the Chocolate Factory").id},
      # Hachi: A Dog's Tale
      {country_id: countries.find_by(country_name: "United Kingdom").id,
       film_id:    films.find_by(title: "Hachi - A Dog's Tale").id},
      {country_id: countries.find_by(country_name: "United States").id,
       film_id:    films.find_by(title: "Hachi - A Dog's Tale").id}
    ]

    CountryFilm.create(country_films_data)

    puts "Countries for films inserted successfully!"
  end
end
