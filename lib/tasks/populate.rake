namespace :db do
  desc "Clear the DB and fill with excellent sample data"
  task populate: :environment do
    require 'faker'

    # Clear the Database
    [Owner, Dog].each do |model|
      model.delete_all
    end

    # Add Genres, Artists, and Songs
    20.times do
      owner = Owner.create(name: Faker::LordOfTheRings.character,
                           phone: Faker::PhoneNumber.cell_phone)

        rand(1..6).times do
          dog = Dog.create(name: Faker::Superhero.name,
                           age: rand(1..18),
                           owner_id: owner.id,
                           breed_id: rand(0..20))
        end
    end

    puts "BOOYA! Populated!"

  end
end