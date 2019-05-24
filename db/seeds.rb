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
kevin = User.new(email: "kevin@animalrent.com", name: "kevin", description: "43 ans, adore le vélo 🚲 , Bordeaux", address: 'Cours du Medoc, 33000, Bordeaux', password: "azerty")
kevin.remote_photo_url = 'https://res.cloudinary.com/ltrihan/image/upload/v1558601962/tu5o2ew5v81lamerapke.jpg'
kevin.save

justine = User.new(email: "justine@animalrent.com", name: "justine", description: "28 ans, en couple, Bordeaux", address: '9 rue Merciere, 33000 Bordeaux', password: "azerty")
justine.remote_photo_url = 'https://res.cloudinary.com/ltrihan/image/upload/v1558601979/sdvxugim9aqnjl2pld1a.jpg'
justine.save

loic = User.new(email: "loic@animalrent.com", name: "loic", description: "25 ans, aime sa petite Caroline (tortue), Marmande", address: '12 rue de la Rousselle, 33000 Bordeaux', password: "azerty")
loic.remote_photo_url = 'https://res.cloudinary.com/ltrihan/image/upload/v1558601919/sgopai0yclcb2ew8fx6d.jpg'
loic.save

tristan = User.new(email: "tristan@animalrent.com", name: "tristan", description: "32 ans, aime les sushis 🍣 Bordeaux", address: '50 rue ferrere, 33000 Bordeaux', password: "azerty")
tristan.remote_photo_url = 'https://res.cloudinary.com/ltrihan/image/upload/v1558601986/bqcubhekxsvri1lyakoa.png'
tristan.save

nala = Animal.new(user: justine, name: "Nala", description: "Husky de 2 ans, super active et joueuse")
nala.remote_photo_url = 'https://jardinage.lemonde.fr/images/dossiers/2017-07/husky-1-105935.jpg'
nala.address = justine.address
nala.save

silver = Animal.new(user: justine, name: "Silver", description: "Chihuahua de 5 ans qui aime dormir")
silver.address = justine.address
silver.remote_photo_url = 'https://www.hundenyheder.dk/wp-content/uploads/2012/09/DKK_udstilling_Vejen_15-09-12_chihuahua_2.jpg'
silver.save

ivy = Animal.new(user: justine, name: "Ivy", description: "Chihuahua de 2 ans qui adore se promener")
ivy.address = justine.address
ivy.remote_photo_url = 'https://www.rover.com/blog/wp-content/uploads/2018/12/chihuahua-820087_1920-960x540.jpg'
ivy.save

caroline = Animal.new(user: loic, name: "Caroline", description: "Jeune tortue adorant la salade")
caroline.address = loic.address
caroline.remote_photo_url = 'https://tse1.mm.bing.net/th?id=OIP.K2NaDFuALZlhArgkLDmO4wHaE8&pid=Api'
caroline.save

king = Animal.new(user: loic, name: "King", description: "Jeune shiba-inu qui aime la plage")
king.address = loic.address
king.remote_photo_url = 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/12224415/Shiba-Inu-MP.jpg'
king.save

drogo = Animal.new(user: kevin, name: "Drogo", description: "Recherchant compagnons et aime jouer")
drogo.address = kevin.address
drogo.remote_photo_url = 'https://static.hitek.fr/img/actualite/2017/08/10/fb_drogonhd.jpg'
drogo.save

komodo = Animal.new(user: tristan, name: "Say", description: "Petit say sauvage, très dangereux & fourbe")
komodo.address = tristan.address
komodo.remote_photo_url = 'https://img.20mn.fr/vAN7ZCdMSgWpBIpib_YxlA/830x532_dragon-komodo-liberte-parc-national-komodo-forme-plusieurs-iles-volcaniques-situe-centre-indonesie.jpg'
komodo.save

licornette = Animal.new(user: tristan, name: "Licornette", description: "Petite licorne qui pète des paillettes")
licornette.address = tristan.address
licornette.remote_photo_url = 'https://i.pinimg.com/originals/aa/22/90/aa2290d1992c3069964adc1eec0ab929.jpg'
licornette.save

tigrou = Animal.new(user: kevin, name: "Tigrou", description: "Aime déguster des petites antilopes")
tigrou.address = kevin.address
tigrou.remote_photo_url = 'https://static.toiimg.com/thumb/msid-65181889,imgsize-293102,width-400,resizemode-4/65181889.jpg'
tigrou.save

puts "Done ! Let's try your app locally."
