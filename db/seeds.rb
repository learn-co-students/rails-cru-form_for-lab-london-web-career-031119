# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

drake = Artist.create(name: "Drake", bio: "Canadian rapper")
dre = Artist.create(name: "Dr Dre", bio: "Iconic west coast")
last_japan = Artist.create(name: "Last Japan", bio: "London urban electronic")

rap = Genre.create(name: "Rap")
electronic = Genre.create(name: "Electronic")

hotline = Song.create(name: "Hotline Bling", artist: drake, genre: rap)
egos = Song.create(name: "Big Egos", artist: dre, genre: rap)
acend = Song.create(name: "Ascend", artist: last_japan, genre: electronic)
