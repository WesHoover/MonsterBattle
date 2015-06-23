# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
fartface = Monster.create([{name: "fartface"}, {attack: 5}, {defense: 7}])
monster2 = Monster.create([{name: "mothra"}, {attack: 8}, {defense: 2}])
fakematch = Match.create([{monster1: 1}, {monster2: 2}, {winner: 2}])
