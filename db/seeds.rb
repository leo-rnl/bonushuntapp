# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Starting seed ..."


puts "Create User ..."

User.create!(email: "test@test.com", password: "azerty")
user = User.first

puts "Ready"


puts "Create States ..."

State.create!(name: "pending")
State.create!(name: "finish")

puts "Ready"


puts "Create Providers"

provider1 = Provider.create!(name: "Play'n'go")
provider2 = Provider.create!(name: "Stake")


puts "Ready"


puts "Create Boards"

Board.create!(name: "First board", devise: "€", start_bet: 100, bet: 1, user: user)
Board.create!(name: "Second board", devise: "$", start_bet: 200, bet: 2, user: user)

puts "Ready"


puts "Create Machines"

Machine.create!(name: "Troll Hunter", volatility: 2, provider: provider1, article_url: "#", play_url: "#")
Machine.create!(name: "Reactoonz", volatility: 5, provider: provider2, article_url: "#", play_url: "#")

puts "Ready"

puts "Ending seed ..."