# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


dogs = Dog.create([{name: "Kobayashi Maru", breed: "English Shepherd", age: 2, gender: "Neutered", colour: "Black Tri", description: "Arthritis", serial_num: 190712, owner_id: 1, temperament_id: 3},
                   {name: "Phoebe", breed: "Heeler x", age: 3, gender: "Spayed", colour: "Black Tri", description: "None", serial_num: 101311, owner_id: 1, temperament_id: 7},
                   {name: "Lexi", breed: "Maltese", age: 13, gender: "Spayed", colour: "White", description: "None", serial_num: 190501, owner_id: 2, temperament_id: 4},
                   {name: "Stitch", breed: "Heeler x", age: 3, gender: "Neutered", colour: "Spotted", description: "None", serial_num: 103111, owner_id: 3, temperament_id: 9},
                   {name: "Sky", breed: "Beagle", age: 3, gender: "Spayed", colour: "Black Tri", description: "None", serial_num: 872346, owner_id: 4, temperament_id: 5}])

                   
owners = Owner.create([{first_name: "Emily", last_name: "Johnson", phone_num: 4024997222, email: "3mle33@gmail.com", address: "4048 N 81st Ave Cir", state: "NE", city: "Omaha", zip: 68134},
                       {first_name: "John", last_name: "Johnson", phone_num: 4024213565, email: "jbjohnson89@windstream.net", address: "6100 S 41 St", state: "NE", city: "Lincoln", zip: 68516},
                       {first_name: "Shonda", last_name: "Jenkins", phone_num: 4023214567, email: "shonda@gmail.com", address: "7843 N 98 St", state: "NE", city: "Omaha", zip: 68137},
                       {first_name: "Sandie", last_name: "Acker", phone_num: 4024506996, email: "sandie@gmail.com", address: "4048 N 81 Ave Cir", state: "NE", city: "Omaha", zip: 68134}])


temperaments = Temperament.create([{temperament: "Hardy"}, {temperament: "Lonely"}, {temperament: "Brave"},
                                   {temperament: "Adamant"}, {temperament: "Naughty"}, {temperament: "Bold"}, 
                                   {temperament: "Docile"}, {temperament: "Relaxed"}, {temperament: "Impish"}, 
                                   {temperament: "Lax"}, {temperament: "Timid"}, {temperament: "Hasty"},
                                   {temperament: "Serious"}, {temperament: "Jolly"}, {temperament: "Naive"},
                                   {temperament: "Modest"}, {temperament: "Mild"}, {temperament: "Quiet"},
                                   {temperament: "Bashful"}, {temperament: "Rash"}, {temperament: "Calm"},
                                   {temperament: "Gentle"}, {temperament: "Sassy"}, {temperament: "Careful"},
                                   {temperament: "Quirky"}])
  

