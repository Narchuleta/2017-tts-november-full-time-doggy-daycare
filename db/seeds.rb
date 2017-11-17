# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

breeds = ['Poodle',
          'Dingo',
          'Labradoodle',
          'Mutt',
          'Dalmation',
          'Golden Retriever',
          'Maltipoo',
          'Pit Bull',
          'Terrier',
          'Bull Dog',
          'Jack Russell',
          'Schnitzel',
          'Noodles',
          'Whiskers',
          'Kitten',
          'Goat',
          'Weiner Dog',
          'Hot Dog',
          'Bratwurst',
          'Italian Sausage',
          'Boudin']


breeds.each do |breed_name|
  Breed.create(name: breed_name)
end

puts "Your breeds have been seeded."
