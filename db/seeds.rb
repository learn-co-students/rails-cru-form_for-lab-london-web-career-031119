# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.create(name:"Blah", artist_id: 1, genre_id: 1)
Song.create(name:"Blah2", artist_id: 2, genre_id: 2)
Song.create(name:"Blah3", artist_id: 3, genre_id: 1)

Genre.create(name: "Rap")
Genre.create(name: "Pop")

Artist.create(name: "Ranjit")
Artist.create(name: "Oli")
Artist.create(name: "Pete")
