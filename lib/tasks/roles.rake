# frozen_string_literal: true

namespace :roles do
  desc "Seed roles"
  task roles: :environment do
    roles_data = [
      {title:       "Actor",
       description: "An actor or actress is a person who portrays a character in a production. The actor performs \"in the flesh\" in the traditional medium of the theater or in modern media such as film, radio, and television."},
      {title:       "Film director",
       description: "A film director is a person who controls a film's artistic and dramatic aspects and visualizes the screenplay (or script) while guiding the film crew and actors in the fulfillment of that vision."}
    ]

    Role.create(roles_data)

    puts "Roles inserted successfully!"
  end
end
