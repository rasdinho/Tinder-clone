# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Match.destroy_all

user1 = User.create(name: "Dawit", age: 22, location: "Maryland",bio: "Single and ready to Minglerails ", prefix: "male")


user2 = User.create(name: "Loraine", age: 19, location: "Bowie", bio: "Lets match!", prefix: "female")


match1 = Match.create(requester_id: user1.id, requestee_id: user2.id)




user3 = User.create(name: "Yahjaira", age: 27, location: "dc", bio: "heyyyy", prefix: "female")

match2 = Match.create(requester_id: user3.id, requestee_id: user2.id)


