namespace :genre_films do
  desc "Seed genres for films"
  task genre_films: :environment do
    genres = Genre.all
    films = Film.all

    genre_films_data = [
      # Pretty Woman
      {genre_id: genres.find_by(title: "Romance").id, film_id: films.find_by(title: "Pretty Woman").id},
      {genre_id: genres.find_by(title: "Comedy").id, film_id: films.find_by(title: "Pretty Woman").id},
      # Titanic
      {genre_id: genres.find_by(title: "Melodrama").id, film_id: films.find_by(title: "Titanic").id},
      {genre_id: genres.find_by(title: "Romance").id, film_id: films.find_by(title: "Titanic").id},
      {genre_id: genres.find_by(title: "Historical film").id, film_id: films.find_by(title: "Titanic").id},
      # Avatar
      {genre_id: genres.find_by(title: "Action").id, film_id: films.find_by(title: "Avatar").id},
      {genre_id: genres.find_by(title: "Fantasy").id, film_id: films.find_by(title: "Avatar").id},
      # Don't Look Up
      {genre_id: genres.find_by(title: "Comedy").id, film_id: films.find_by(title: "Don't Look Up").id},
      {genre_id: genres.find_by(title: "Drama").id, film_id: films.find_by(title: "Don't Look Up").id},
      {genre_id: genres.find_by(title: "Fantastic").id, film_id: films.find_by(title: "Don't Look Up").id},
      # The Devil Wears Prada
      {genre_id: genres.find_by(title: "Comedy").id, film_id: films.find_by(title: "The Devil Wears Prada").id},
      {genre_id: genres.find_by(title: "Drama").id, film_id: films.find_by(title: "The Devil Wears Prada").id},
      # Mr. & Mrs. Smith
      {genre_id: genres.find_by(title: "Action").id, film_id: films.find_by(title: "Mr. & Mrs. Smith").id},
      {genre_id: genres.find_by(title: "Crime").id, film_id: films.find_by(title: "Mr. & Mrs. Smith").id},
      {genre_id: genres.find_by(title: "Comedy").id, film_id: films.find_by(title: "Mr. & Mrs. Smith").id},
      {genre_id: genres.find_by(title: "Melodrama").id, film_id: films.find_by(title: "Mr. & Mrs. Smith").id},
      # Lara Croft: Tomb Raider
      {genre_id: genres.find_by(title: "Adventure").id, film_id: films.find_by(title: "Lara Croft: Tomb Raider").id},
      {genre_id: genres.find_by(title: "Fantasy").id, film_id: films.find_by(title: "Lara Croft: Tomb Raider").id},
      {genre_id: genres.find_by(title: "Action").id, film_id: films.find_by(title: "Lara Croft: Tomb Raider").id},
      # Lara Croft: Tomb Raider – The Cradle of Life
      {genre_id: genres.find_by(title: "Adventure").id, film_id: films.find_by(title: "Lara Croft: Tomb Raider – The Cradle of Life").id},
      {genre_id: genres.find_by(title: "Fantasy").id, film_id: films.find_by(title: "Lara Croft: Tomb Raider – The Cradle of Life").id},
      {genre_id: genres.find_by(title: "Action").id, film_id: films.find_by(title: "Lara Croft: Tomb Raider – The Cradle of Life").id},
      # James Bond 007: Spectre
      {genre_id: genres.find_by(title: "Action").id, film_id: films.find_by(title: "James Bond 007: Spectre").id},
      {genre_id: genres.find_by(title: "Thriller").id, film_id: films.find_by(title: "James Bond 007: Spectre").id},
      # Jurassic Park
      {genre_id: genres.find_by(title: "Adventure").id, film_id: films.find_by(title: "Jurassic Park").id},
      {genre_id: genres.find_by(title: "Fantastic").id, film_id: films.find_by(title: "Jurassic Park").id},
      # Terminator
      {genre_id: genres.find_by(title: "Action").id, film_id: films.find_by(title: "Terminator").id},
      {genre_id: genres.find_by(title: "Thriller").id, film_id: films.find_by(title: "Terminator").id},
      {genre_id: genres.find_by(title: "Fantastic").id, film_id: films.find_by(title: "Terminator").id},
      # Beauty and the Beast
      {genre_id: genres.find_by(title: "Fantasy").id, film_id: films.find_by(title: "Beauty and the Beast").id},
      {genre_id: genres.find_by(title: "Melodrama").id, film_id: films.find_by(title: "Beauty and the Beast").id},
      {genre_id: genres.find_by(title: "Musical").id, film_id: films.find_by(title: "Beauty and the Beast").id},
      # Harry Potter and the Philosopher's Stone
      {genre_id: genres.find_by(title: "Fantasy").id, film_id: films.find_by(title: "Harry Potter and the Philosopher's Stone").id},
      {genre_id: genres.find_by(title: "Adventure").id, film_id: films.find_by(title: "Harry Potter and the Philosopher's Stone").id},
      # Charlie and the Chocolate Factory
      {genre_id: genres.find_by(title: "Fantasy").id, film_id: films.find_by(title: "Charlie and the Chocolate Factory").id},
      {genre_id: genres.find_by(title: "Comedy").id, film_id: films.find_by(title: "Charlie and the Chocolate Factory").id},
      {genre_id: genres.find_by(title: "Adventure").id, film_id: films.find_by(title: "Charlie and the Chocolate Factory").id},
      # Hachi: A Dog's Tale
      {genre_id: genres.find_by(title: "Drama").id, film_id: films.find_by(title: "Hachi: A Dog's Tale").id}
    ]

    GenreFilm.create(genre_films_data)

    puts "Genres for films inserted successfully!"
  end
end
