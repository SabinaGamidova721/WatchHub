# frozen_string_literal: true

namespace :countries do
  desc "Seed countries"
  task countries: :environment do
    country_name = ["United States", "Mexico", "United Kingdom", "Japan", "Germany"]

    country_name.each do |country|
      Country.create(country_name: country)
    end

    puts "Countries inserted successfully!"
  end
end
