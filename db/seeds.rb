# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
require 'date'

SelectPlayer.destroy_all
Team.destroy_all
Event.destroy_all
User.destroy_all

user_malik = User.new(email: "malik@gmail.fr",
  password: "password",
  first_name: "Malik",
  last_name: 'Wattrelot',
  phone_number: '0609080706',
  age: 31,
  gender: 'Homme',
  address: "Nice",
  main_sport: "beach volley",
  role: 'Both',
  medical_certificate: true,
  )
  photo_malik = URI.open("https://st.depositphotos.com/1269204/1219/i/450/depositphotos_12196477-stock-photo-smiling-men-isolated-on-the.jpg")
  user_malik.photo.attach(io:photo_malik, filename: "profil1.png", content_type: "image/jpg")
  user_malik.save!

 user_nice_ville = User.new(email: "ville_nice@gmail.fr",
  password: "password",
  first_name: "Nice Ville",
  last_name: 'La mairie',
  phone_number: '0609080701',
  address: "5 Rue de l'Hôtel de ville, 06000 Nice",
  main_sport: "multi-sport",
  role: 'Organiser'
  )
user_nice_ville.save


user_cagnes_petanque = User.new(email: "cagnes_petanque@gmail.fr",
  password: "password",
  first_name: "Cagnes",
  last_name: 'Pétanque',
  phone_number: '0609080702',
  address: "5 Pl. Saint-Pierre, 06800 Cagnes-sur-Mer",
  main_sport: "Petanque",
  role: 'Organiser'
  )
user_cagnes_petanque.save!


user_monaco_ville = User.new(email: "monaco_ville@gmail.fr",
  password: "password",
  first_name: "Monaco",
  last_name: 'Ville',
  phone_number: '0609080703',
  address: "Pl. de la Mairie, 98000 Monaco",
  main_sport: "multi-sport",
  role: 'Organiser'
  )
user_monaco_ville.save!

user_olivier = User.new(email: "olivier@gmail.fr",
  password: "password",
  first_name: "Olivier",
  last_name: 'Bart',
  phone_number: '0609080703',
  age: 28,
  gender: 'Homme',
  address: "337 chemin de cremat 06200 Nice",
  main_sport: "Beach volley",
  medical_certificate: true,
  role: 'Both'
  )
  photo_olivier = URI.open("https://avatars.githubusercontent.com/u/103443520?v=4")
  user_olivier.photo.attach(io: photo_olivier, filename: "profil2.png", content_type: "image/jpg")
  user_olivier.save!

user_silvia = User.new(email: "silvia@gmail.fr",
  password: "password",
  first_name: "Silvia",
  last_name: 'Pasini',
  phone_number: '0609080704',
  age: 30,
  gender: 'Femme',
  address: "avenue de la qualifornie 06000 Nice",
  main_sport: "Roller",
  medical_certificate: false,
  role: 'Player'
  )
  photo_silvia = URI.open("https://avatars.githubusercontent.com/u/105485047?v=4")
  user_silvia.photo.attach(io: photo_silvia, filename: "profil3.png", content_type: "image/png")
  user_silvia.save

user_alice = User.new(email: "alice@gmail.fr",
  password: "password",
  first_name: "Alice",
  last_name: 'Daubrée',
  phone_number: '0609080705',
  age: 26,
  gender: 'Femme',
  address: "avenue de la qualifornie 06000 Nice",
  main_sport: "Roller",
  medical_certificate: false,
  role: 'Player'
  )

  photo_alice = URI.open("https://avatars.githubusercontent.com/u/107176076?v=4")
  user_alice.photo.attach(io: photo_alice, filename: "profil4.png", content_type: "image/png")
  user_alice.save

user_evan = User.new(email: "evan@gmail.fr",
  password: "password",
  first_name: "Evan",
  last_name: 'Aballea',
  phone_number: '0609080713',
  age: 20,
  gender: 'Homme',
  address: "337 chemin de cremat 06200 Nice",
  main_sport: "Ski",
  medical_certificate: true,
  role: 'Both'
  )
  photo_evan = URI.open("https://avatars.githubusercontent.com/u/106963256?v=4")
  user_evan.photo.attach(io: photo_evan, filename: "profil5.png", content_type: "image/jpg")
  user_evan.save!

event_beach = Event.new(event_name: "S2 Nice",
  nb_players_team: 2,
  price_by_player: 20.0,
  event_start: Date.today.next_month,
  event_end: Date.today.next_month + 3,
  event_address: "300m Prom. des Anglais, 06200 Nice",
  event_gender: "Mixte",
  deadline_register: Date.today + 14,
  prizemoney: 500.0,
  nb_team: 32,
  user_id: user_malik.id,
  activity: "Beach Volley"
)
  photo_event_beach = URI.open("https://static.actu.fr/uploads/2022/05/20220524-142301.jpg")
  event_beach.photos.attach(io: photo_event_beach, filename: "event1.png", content_type: "image/jpg")
  event_beach.save

event_beach2 = Event.new(event_name: "S4 Marseille",
  nb_players_team: 2,
  price_by_player: 20.0,
  event_start: Date.today.next_month,
  event_end: Date.today.next_month + 3,
  event_address: "3 Chem. de la Colline Saint-Joseph, 13009 Marseille",
  event_gender: "Mixte",
  deadline_register: Date.today + 14,
  prizemoney: 500.0,
  nb_team: 32,
  user_id: user_olivier.id,
  activity: "Beach Volley"
)
  photo_event_beach2 = URI.open("https://www.countrysportvillage.it/wp-content/uploads/2020/08/MANI_PALLA_BEACH.jpg")
  event_beach2.photos.attach(io: photo_event_beach2, filename: "event1.png", content_type: "image/jpg")
  event_beach2.save!



event_basket = Event.new( event_name: "Tournoi 3c3 Nice",
  nb_players_team: 3,
  price_by_player: 20.0,
  event_start: Date.today.next_month + 15,
  event_end: Date.today.next_month + 18,
  event_address: "18 Rue Maréchal Vauban, 06300 Nice",
  event_gender: "Homme",
  deadline_register: Date.today + 1,
  prizemoney: 500.0,
  nb_team: 32,
  user_id: user_nice_ville.id,
  activity: "Basket 3c3"
)
  photo_event_basket = URI.open("https://sport.univ-cotedazur.fr/media/cache/thumb_large_small/upload/public/image/61ba08780b4ec904869569.jpeg")
  event_basket.photos.attach(io: photo_event_basket, filename: "event2.png", content_type: "image/jpeg")
  event_basket.save

event_foot = Event.new( event_name: "Tournoi foot Nice",
  nb_players_team: 11,
  price_by_player: 5.0,
  event_start: Date.today,
  event_end: Date.today,
  event_address: "190 Bd Napoléon III, 06200 Nice",
  event_gender: "Femme",
  deadline_register: Date.today,
  prizemoney: 0.0,
  nb_team: 12,
  user_id: user_nice_ville.id,
  activity: "foot"
)
  photo_event_foot = URI.open("https://s1.static-footeo.com/uploads/nice-u13-cup/grounds/lauvette__nj328k.jpg")
  event_foot.photos.attach(io: photo_event_foot, filename: "event3.png", content_type: "image/jpg")
  event_foot.save

event_petanque = Event.new( event_name: "Petanque challenge Cagnes sur mer",
  nb_players_team: 1,
  price_by_player: 10.0,
  event_start: Date.today + 4,
  event_end: Date.today + 5,
  event_address: " 5 Pl. Saint-Pierre, 06800 Cagnes-sur-Mer",
  event_gender: "Mixte",
  deadline_register: Date.today + 3,
  prizemoney: 1000.0,
  nb_team: 64,
  user_id: user_cagnes_petanque.id,
  activity: "Petanque"
)
  photo_event_petanque = URI.open("https://ville-data.com/terrain-de-petanque/image/terrain-de-petanque-300.jpg")
  event_petanque.photos.attach(io: photo_event_petanque, filename: "event4.png", content_type: "image/jpg")
  event_petanque.save

event_golf = Event.new( event_name: "Gold Worldcup Monaco",
  nb_players_team: 1,
  price_by_player: 50.0,
  event_start: Date.today.next_month,
  event_end: Date.today.next_month + 5,
  event_address: "Route du Mont-Agel, 06320 La Turbie, France, 43.75298, 7.40883",
  event_gender: "Homme",
  deadline_register: Date.today,
  prizemoney: 10000.0,
  nb_team: 128,
  user_id: user_monaco_ville.id,
  activity: "Golf" )

photo_event_golf = URI.open("https://golfdemontecarlo.com/wp-content/uploads/2018/07/Golf-Monte-carlo-Monaco-club-house-18-trous-parcours-green-practice-sport-loisirs-cote-azur-mer-2-1.jpg")
event_golf.photos.attach(io: photo_event_golf, filename: "event5.png", content_type: "image/jpg")
event_golf.save

event_ping_pong = Event.new( event_name: "Ping pong 2v2",
  nb_players_team: 2,
  price_by_player: 0,
  event_start: Date.today.next_month,
  event_end: Date.today.next_month + 5,
  event_address: "8 Av. Raoul Dufy, 06200 Nice",
  event_gender: "Homme",
  deadline_register: Date.today + 15,
  prizemoney: 0,
  nb_team: 28,
  user_id: user_silvia.id,
  activity: "ping-pong" )

photo_event_ping_pong = URI.open("https://img-4.linternaute.com/F5Ba2PMEN2C3FbETxBtIF9oXWJg=/1500x/smart/578ef31fc88b496eb2c76781d7c73a61/ccmcms-linternaute/10767634.jpg")
event_ping_pong.photos.attach(io: photo_event_ping_pong, filename: "event6.png", content_type: "image/jpg")
event_ping_pong.save

event_ping_pong2 = Event.new( event_name: "Ping pong 1v1",
  nb_players_team: 1,
  price_by_player: 2,
  event_start: Date.today.next_month,
  event_end: Date.today.next_month + 5,
  event_address: "8 Av. Raoul Dufy, 06200 Nice",
  event_gender: "Femme",
  deadline_register: Date.today + 15,
  prizemoney: 20,
  nb_team: 8,
  user_id: user_silvia.id,
  activity: "ping-pong" )

photo_event_ping_pong2 = URI.open("https://www.area.fr/sites/default/files/2019-01/area_table_ping_pong_oxygene_01v_0.jpg")
event_ping_pong2.photos.attach(io: photo_event_ping_pong2, filename: "event7.png", content_type: "image/jpg")
event_ping_pong2.save

event_basket2 = Event.new( event_name: "Tournoi 5c5 Nice",
  nb_players_team: 5,
  price_by_player: 20.0,
  event_start: Date.today.next_month + 15,
  event_end: Date.today.next_month + 18,
  event_address: "1 Rue Jean-Henri Fabre, 06100 Nice",
  event_gender: "Mixte",
  deadline_register: Date.today + 1,
  prizemoney: 500.0,
  nb_team: 32,
  user_id: user_evan.id,
  activity: "Basket 5c5"
)
  photo_event_basket2 = URI.open("https://thumbs.dreamstime.com/b/professional-basketball-court-arena-backgrounds-professional-basketball-court-arena-background-168018953.jpg")
  event_basket2.photos.attach(io: photo_event_basket2, filename: "event8.png", content_type: "image/jpg")
  event_basket2.save

team_oli_silvia = Team.new( team_name: "Oli/Silv",
  nb_player: 2,
  gender: 'Mixte',
  event_id: event_beach.id)
team_oli_silvia.save

select_oli = SelectPlayer.new( team_id: team_oli_silvia.id,
user_id: user_olivier.id)
select_oli.save

select_sil = SelectPlayer.new( team_id: team_oli_silvia.id,
  user_id: user_silvia.id)
select_sil.save
