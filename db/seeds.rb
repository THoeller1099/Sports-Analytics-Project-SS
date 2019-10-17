# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# original seeding for players table
=begin
    player1 = {first_name: "Lebron", last_name: "James", team: "Lakers", points: 156.0, assists: 81.0, rebounds: 100.0}
    player2 = {first_name: "James", last_name: "Harden", team: "Rockets", points: 144.0, assists: 79.0, rebounds: 85.0}
    player3 = {first_name: "Giannis", last_name: "Antetokounmpo", team: "Bucks", points: 142.0, assists: 85.0, rebounds: 112.0}
    player4 = {first_name: "Anthony", last_name: "Davis", team: "Lakers", points: 111.0, assists: 52.0, rebounds: 99.0}
    player5 = {first_name: "Joel", last_name: "Embiid", team: "Lakers", points: 70.0, assists: 85.0, rebounds: 48.0}
    player6 = {first_name: "Russell", last_name: "Westbrook", team: "Rockets", points: 93.0, assists: 56.0, rebounds: 76.0}
    player7 = {first_name: "Paul", last_name: "George", team: "Clippers", points: 93.0, assists: 56.0, rebounds: 76.0}
    player8 = {first_name: "Kevin", last_name: "Durant", team: "Nets", points: 0.0, assists: 0.0, rebounds: 0.0}
    player9 = {first_name: "Stephen", last_name: "Curry", team: "Warriors", points: 95.0, assists: 65.0, rebounds: 43.0}
    player10 = {first_name: "Karl-Anthony", last_name: "Towns", team: "Timberwolves", points: 81.0, assists: 84.0, rebounds: 77.0}
    player11 = {first_name: "Nikola", last_name: "Jokic", team: "Nuggets", points: 86.0, assists: 91.0, rebounds: 71.0}
    player12 = {first_name: "Kawhi", last_name: "Leonard", team: "Clippers", points: 79.0, assists: 83.0, rebounds: 67.0}
    player13 = {first_name: "Damian", last_name: "Lillard", team: "Trailblazers", points: 94.0, assists: 69.0, rebounds: 71.0}
    player14 = {first_name: "Kyrie", last_name: "Irving", team: "Nets", points: 86.0, assists: 72.0, rebounds: 54.0}
    player15 = {first_name: "Bradley", last_name: "Beal", team: "Wizards", points: 83.0, assists: 61.0, rebounds: 57.0}
    Player.create([player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15])
=end

# seeding from csv file
df = Daru::DataFrame.from_csv('app/data/NBApoints.csv')
nms = df["Player"]
tms = df["Tm"]
pts = df["PS/G"]
asts = df["AST"]
rbds = df["TRB"]

nms.zip(tms, pts, asts, rbds).each do |nm, tm, pt, ast, rbd|
	player = {first_name: "", last_name: "", team: "", points:0.0, assists:0.0, rebounds:0.0}
	full_name = nm.split()
	first = full_name[0]
	last = full_name[1]
	player[:first_name] = first
	player[:last_name] = last
	player[:team] = tm
	player[:points] = pt
	player[:assists] = ast
	player[:rebounds] = rbd
	Player.create([player])
end

