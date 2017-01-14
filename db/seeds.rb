# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


if Rails.env.development?
  Movie.create! title: "Star Wars", year: 1978
  Movie.create! title: "Star Trek: The Motion Picture", year: 1980
  Movie.create! title: "Mad Max - Fury Road", year: 2015
end
