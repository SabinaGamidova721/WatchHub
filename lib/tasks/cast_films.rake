namespace :cast_films do
  desc "Seed casts for films"
  task cast_films: :environment do
    films = Film.all

    cast_films_data = [
      # Pretty Woman
      {cast_id: 1, film_id: films.find_by(title: "Pretty Woman").id},
      {cast_id: 2, film_id: films.find_by(title: "Pretty Woman").id},
      {cast_id: 29, film_id: films.find_by(title: "Pretty Woman").id},
      # Titanic
      {cast_id: 3, film_id: films.find_by(title: "Titanic").id},
      {cast_id: 4, film_id: films.find_by(title: "Titanic").id},
      {cast_id: 30, film_id: films.find_by(title: "Titanic").id},
      # Avatar
      {cast_id: 5, film_id: films.find_by(title: "Avatar").id},
      {cast_id: 6, film_id: films.find_by(title: "Avatar").id},
      {cast_id: 7, film_id: films.find_by(title: "Avatar").id},
      {cast_id: 30, film_id: films.find_by(title: "Avatar").id},
      # Don't Look Up
      {cast_id: 3, film_id: films.find_by(title: "Don't Look Up").id},
      {cast_id: 8, film_id: films.find_by(title: "Don't Look Up").id},
      {cast_id: 9, film_id: films.find_by(title: "Don't Look Up").id},
      {cast_id: 31, film_id: films.find_by(title: "Don't Look Up").id},
      # The Devil Wears Prada
      {cast_id: 9, film_id: films.find_by(title: "The Devil Wears Prada").id},
      {cast_id: 10, film_id: films.find_by(title: "The Devil Wears Prada").id},
      {cast_id: 32, film_id: films.find_by(title: "The Devil Wears Prada").id},
      # Mr. & Mrs. Smith
      {cast_id: 11, film_id: films.find_by(title: "Mr. & Mrs. Smith").id},
      {cast_id: 12, film_id: films.find_by(title: "Mr. & Mrs. Smith").id},
      {cast_id: 33, film_id: films.find_by(title: "Mr. & Mrs. Smith").id},
      # Lara Croft: Tomb Raider
      {cast_id: 12, film_id: films.find_by(title: "Lara Croft: Tomb Raider").id},
      {cast_id: 13, film_id: films.find_by(title: "Lara Croft: Tomb Raider").id},
      {cast_id: 34, film_id: films.find_by(title: "Lara Croft: Tomb Raider").id},
      # Lara Croft: Tomb Raider – The Cradle of Life
      {cast_id: 12, film_id: films.find_by(title: "Lara Croft: Tomb Raider – The Cradle of Life").id},
      {cast_id: 14, film_id: films.find_by(title: "Lara Croft: Tomb Raider – The Cradle of Life").id},
      {cast_id: 35, film_id: films.find_by(title: "Lara Croft: Tomb Raider – The Cradle of Life").id},
      # James Bond 007: Spectre
      {cast_id: 13, film_id: films.find_by(title: "James Bond 007: Spectre").id},
      {cast_id: 15, film_id: films.find_by(title: "James Bond 007: Spectre").id},
      {cast_id: 36, film_id: films.find_by(title: "James Bond 007: Spectre").id},
      # Jurassic Park
      {cast_id: 16, film_id: films.find_by(title: "Jurassic Park").id},
      {cast_id: 17, film_id: films.find_by(title: "Jurassic Park").id},
      {cast_id: 18, film_id: films.find_by(title: "Jurassic Park").id},
      {cast_id: 37, film_id: films.find_by(title: "Jurassic Park").id},
      # Terminator
      {cast_id: 19, film_id: films.find_by(title: "Terminator").id},
      {cast_id: 20, film_id: films.find_by(title: "Terminator").id},
      {cast_id: 21, film_id: films.find_by(title: "Terminator").id},
      {cast_id: 30, film_id: films.find_by(title: "Terminator").id},
      # Beauty and the Beast
      {cast_id: 22, film_id: films.find_by(title: "Beauty and the Beast").id},
      {cast_id: 23, film_id: films.find_by(title: "Beauty and the Beast").id},
      {cast_id: 24, film_id: films.find_by(title: "Beauty and the Beast").id},
      {cast_id: 38, film_id: films.find_by(title: "Beauty and the Beast").id},
      # Harry Potter and the Philosopher's Stone
      {cast_id: 22, film_id: films.find_by(title: "Harry Potter and the Philosopher's Stone").id},
      {cast_id: 25, film_id: films.find_by(title: "Harry Potter and the Philosopher's Stone").id},
      {cast_id: 26, film_id: films.find_by(title: "Harry Potter and the Philosopher's Stone").id},
      {cast_id: 39, film_id: films.find_by(title: "Harry Potter and the Philosopher's Stone").id},
      # Charlie and the Chocolate Factory
      {cast_id: 27, film_id: films.find_by(title: "Charlie and the Chocolate Factory").id},
      {cast_id: 28, film_id: films.find_by(title: "Charlie and the Chocolate Factory").id},
      {cast_id: 40, film_id: films.find_by(title: "Charlie and the Chocolate Factory").id},
      # Hachi: A Dog's Tale
      {cast_id: 1, film_id: films.find_by(title: "A Dog's Tale").id},
      {cast_id: 41, film_id: films.find_by(title: "A Dog's Tale").id}
    ]

    CastFilm.create(cast_films_data)

    puts "Casts for films inserted successfully!"
  end
end
