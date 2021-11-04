# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
# actor.save

Genre.create!(name: "comedy")
Movie.create!(title: "test_movie", year: "2000", plot: "not shrek and something else happens", director: "me", english: true)
Actor.create!(first_name: "Owen", last_name: "Wilson", known_for: "saying wow in a funny way", age: 100, gender: "male", movie_id: 1)
MovieGenre.create!(genre_id: 1, movie_id: 1)