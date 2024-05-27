namespace :maturity_ratings do
  desc "Seed maturity ratings"
  task maturity_ratings: :environment do

    maturity_ratings_data = [
      {title: "0+", description: "You can watch it with your whole family and enjoy it."},
      {title: "6+", description: "You can watch with the whole family, children can ask questions and be distracted."},
      {title: "12+", description: "Mature themes and concepts, but the themes are not explored."},
      {title: "16+", description: "For the more mature and understanding."},
      {title: "18+", description: "Adults only."}
    ]

    MaturityRating.create(maturity_ratings_data)

    puts "Maturity ratings inserted successfully!"
  end
end
