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

kevin = User.new(email: "kevin@animalrent.com", name: "kevin", password: "azerty")
kevin.remote_photo_url = 'https://res.cloudinary.com/ltrihan/image/upload/v1558601962/tu5o2ew5v81lamerapke.jpg'
kevin.save

justine = User.new(email: "justine@animalrent.com", name: "justine", password: "azerty")
justine.remote_photo_url = 'https://res.cloudinary.com/ltrihan/image/upload/v1558601979/sdvxugim9aqnjl2pld1a.jpg'
justine.save

loic = User.new(email: "loic@animalrent.com", name: "loic", password: "azerty")
loic.remote_photo_url = 'https://res.cloudinary.com/ltrihan/image/upload/v1558601919/sgopai0yclcb2ew8fx6d.jpg'
loic.save

tristan = User.new(email: "tristan@animalrent.com", name: "tristan", password: "azerty")
tristan.remote_photo_url = 'https://res.cloudinary.com/ltrihan/image/upload/v1558601986/bqcubhekxsvri1lyakoa.png'
tristan.save

nala = Animal.new(user: justine, name: "Nala", description: "Husky de 2 ans, super active et joueuse")
nala.remote_photo_url = 'https://pbs.twimg.com/profile_images/925702999095119872/F2ppKp1x_400x400.jpg'
nala.save

caroline = Animal.new(user: loic, name: "Caroline", description: "La plus belle des tortues")
caroline.remote_photo_url = 'https://tse1.mm.bing.net/th?id=OIP.K2NaDFuALZlhArgkLDmO4wHaE8&pid=Api'
caroline.save

drogo = Animal.new(user: kevin, name: "Drogo", description: "Chien recherchant compagnons")
drogo.remote_photo_url = 'https://static.hitek.fr/img/actualite/2017/08/10/fb_drogonhd.jpg'
drogo.save

komodo = Animal.new(user: tristan, name: "Komodo", description: "Recherche pet sitter pour le weekend")
komodo.remote_photo_url = 'https://img.20mn.fr/vAN7ZCdMSgWpBIpib_YxlA/830x532_dragon-komodo-liberte-parc-national-komodo-forme-plusieurs-iles-volcaniques-situe-centre-indonesie.jpg'
komodo.save

puts "Done ! Let's try your app locally."
