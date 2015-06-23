# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
fartface = Monster.create([{name: "fartface", attack: 2, defense: 2 }, {name: "godzilla", attack: 5, defense: 4}, {name: "swamp thing", attack: 1, defense: 7}])
monster2 = Monster.create([{name: "mothra", attack: 3, defense: 7}, {name: "max", attack: 1, defense: 0}, {name: "almond", attack: 9, defense: 2}])
fakematch = Match.create([{monster1: 1}, {monster2: 2}, {winner: 2}])
fakematch2 = Match.create([{monster1: 1, monster2: 2, winner: 12}])
