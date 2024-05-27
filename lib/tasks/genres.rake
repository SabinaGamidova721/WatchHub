namespace :genres do
  desc "Seed genres"
  task genres: :environment do
    genres_data = [
      {title: "Romance", description: "Romance films involve romantic love stories recorded in visual media for broadcast in theatres or on television that focus on passion, emotion, and the affectionate romantic involvement of the main characters."},
      {title: "Comedy", description: "A comedy film is a film genre that emphasizes humor. Defined by events that are primarily intended to make the audience laugh."},
      {title: "Melodrama", description: "A modern melodrama is a dramatic work in which the plot, typically sensationalized and for a very strong emotional appeal, takes precedence over detailed characterization."},
      {title: "Historical film", description: "The historical drama or period drama is a film genre in which stories are based upon historical events and famous people."},
      {title: "Action", description: "The action film is a film genre that predominantly features chase sequences, fights, shootouts, explosions, and stunt work. Associated with particular types of spectacle."},
      {title: "Fantasy", description: "Fantasy films are films that belong to the fantasy genre with fantastic themes, usually magic, supernatural events, mythology, folklore, or exotic fantasy worlds."},
      {title: "Drama", description: "The drama is a category or genre of narrative fiction intended to be more serious than humorous in tone. Focused on emotions and defined by conflict, often looking to reality rather than sensationalism."},
      {title: "Fantastic", description: "Film fiction is a direction and genre of artistic cinematography, which can be characterized by an increased level of convention. The images, events and settings of science fiction films are often deliberately removed from everyday reality."},
      {title: "Crime", description: "Crime films, in the broadest sense, is a film genre inspired by and analogous to the crime fiction literary genre. Films of this genre generally involve various aspects of crime and its detection."},
      {title: "Adventure", description: "An adventure film is a form of adventure fiction, and is a genre of film. Implies a narrative that is defined by a journey (often including some form of pursuit) and is usually located within a fantasy or exoticized setting."},
      {title: "Thriller", description: "Thriller film is a broad film genre that evokes excitement and suspense in the audience. Tension is created by delaying what the audience sees as inevitable, and is built through situations that are menacing or where escape seems impossible."},
      {title: "Musical", description: "Musical film is a film genre in which songs by the characters are interwoven into the narrative, sometimes accompanied by dancing."}
    ]

    Genre.create(genres_data)

    puts "Genres inserted successfully!"
  end
end
