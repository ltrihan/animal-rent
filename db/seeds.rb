# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Animal.destroy_all
User.destroy_all


puts "Creating some users and animals..."


kevin = User.new(email: ", name: "kevin", password: "azerty")
kevin.save

justine = User.new(email: "justine@animalrent.com", name: "justine", password: "azerty")
justine.save

loic = User.new(email: "loic@animalrent.com", name: "loic", password: "azerty")
loic.save

tristan = User.new(email: "tristan@animalrent.com", name: "tristan", password: "azerty")
tristan.save

nala = Animal.new(user: justine, name: "Nala")
nala.save

caroline = Animal.new(user: loic, name: "Caroline")
caroline.save

drogo = Animal.new(user: kevin, name: "Drogo")
drogo.save

komodo = Animal.new(user: tristan, name: "Komodo")
komodo.save

puts "Done ! Let's try your app locally."
