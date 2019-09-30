# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seeding for players table
    player1 = {first_name: "Lebron", last_name: "James", team: "Lakers", points: 156, assists: 81, rebounds: 100}
    player2 = {first_name: "James", last_name: "Harden", team: "Rockets", points: 144, assists: 79, rebounds: 85}
    player3 = {first_name: "Giannis", last_name: "Antetokounmpo", team: "Bucks", points: 142, assists: 85, rebounds: 112}
    player4 = {first_name: "Anthony", last_name: "Davis", team: "Lakers", points: 111, assists: 52, rebounds: 99}
    player5 = {first_name: "Joel", last_name: "Embiid", team: "Lakers", points: 70, assists: 85, rebounds: 48}
    player6 = {first_name: "Russell", last_name: "Westbrook", team: "Rockets", points: 93, assists: 56, rebounds: 76}
    player7 = {first_name: "Paul", last_name: "George", team: "Clippers", points: 93, assists: 56, rebounds: 76}
    player8 = {first_name: "Kevin", last_name: "Durant", team: "Nets", points: 0, assists: 0, rebounds: 0}
    player9 = {first_name: "Stephen", last_name: "Curry", team: "Warriors", points: 95, assists: 65, rebounds: 43}
    player10 = {first_name: "Karl-Anthony", last_name: "Towns", team: "Timberwolves", points: 81, assists: 84, rebounds: 77}
    player11 = {first_name: "Nikola", last_name: "Jokic", team: "Nuggets", points: 86, assists: 91, rebounds: 71}
    player12 = {first_name: "Kawhi", last_name: "Leonard", team: "Clippers", points: 79, assists: 83, rebounds: 67}
    player13 = {first_name: "Damian", last_name: "Lillard", team: "Trailblazers", points: 94, assists: 69, rebounds: 71}
    player14 = {first_name: "Kyrie", last_name: "Irving", team: "Nets", points: 86, assists: 72, rebounds: 54}
    player15 = {first_name: "Bradley", last_name: "Beal", team: "Wizards", points: 83, assists: 61, rebounds: 57}
    Player.create([player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15])