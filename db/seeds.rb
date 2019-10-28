# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require('daru')

# add teams data 2019
df_teams_2019 = Daru::DataFrame.from_csv('app/data/teams-2018-2019-REGULAR.csv')
citys = df_teams_2019["#Team City"]
nicknames = df_teams_2019["#Team Name"]
abrs = df_teams_2019["#Team Abbr."]
gsp = df_teams_2019["#GamesPlayed"]
ws = df_teams_2019["#Wins"]
ls = df_teams_2019["#Losses"]
citys.zip(nicknames, abrs, gsp, ws, ls).each do |city, nickname, ab, gp, w, l|
	team_2019 = {year:"2018-2019", location: "", name: "", abbr: "", games_played: "", wins:0, losses:0}
	team_2019[:location] = city
	team_2019[:name] = nickname
	team_2019[:abbr] = ab
	team_2019[:games_played] = gp
	team_2019[:wins] = w
	team_2019[:losses] = l
	Team.create([team_2019])
end

# add teams data 2018
df_teams_2018 = Daru::DataFrame.from_csv('app/data/teams-2017-2018-REGULAR.csv')
citys = df_teams_2018["#Team City"]
nicknames = df_teams_2018["#Team Name"]
abrs = df_teams_2018["#Team Abbr."]
gsp = df_teams_2018["#GamesPlayed"]
ws = df_teams_2018["#Wins"]
ls = df_teams_2018["#Losses"]
citys.zip(nicknames, abrs, gsp, ws, ls).each do |city, nickname, ab, gp, w, l|
	team_2018 = {year:"2017-2018", location: "", name: "", abbr: "", games_played: "", wins:0, losses:0}
	team_2018[:location] = city
	team_2018[:name] = nickname
	team_2018[:abbr] = ab
	team_2018[:games_played] = gp
	team_2018[:wins] = w
	team_2018[:losses] = l
	Team.create([team_2018])
end

# add teams data 2017
df_teams_2017 = Daru::DataFrame.from_csv('app/data/teams-2016-2017-REGULAR.csv')
citys = df_teams_2017["#Team City"]
nicknames = df_teams_2017["#Team Name"]
abrs = df_teams_2017["#Team Abbr."]
gsp = df_teams_2017["#GamesPlayed"]
ws = df_teams_2017["#Wins"]
ls = df_teams_2017["#Losses"]
citys.zip(nicknames, abrs, gsp, ws, ls).each do |city, nickname, ab, gp, w, l|
	team_2017 = {year:"2016-2017", location: "", name: "", abbr: "", games_played: "", wins:0, losses:0}
	team_2017[:location] = city
	team_2017[:name] = nickname
	team_2017[:abbr] = ab
	team_2017[:games_played] = gp
	team_2017[:wins] = w
	team_2017[:losses] = l
	Team.create([team_2017])
end

# add players data 2019
df_players_2019 = Daru::DataFrame.from_csv('app/data/players-2018-2019-REGULAR.csv')
first_names = df_players_2019["#FirstName"]
last_names = df_players_2019["#LastName"]
positions = df_players_2019["#Position"]
teams = df_players_2019["#Team Abbr."]
pts = df_players_2019["#PtsPerGame"]
asts = df_players_2019["#AstPerGame"]
rbds = df_players_2019["#RebPerGame"]
blks = df_players_2019["#BlkPerGame"]
stls = df_players_2019["#StlPerGame"]
twoPtAs = df_players_2019["#Fg2PtAttPerGame"]
twoPtMs = df_players_2019["#Fg2PtMadePerGame"]
threePtAs = df_players_2019["#Fg3PtAttPerGame"]
threePtMs = df_players_2019["#Fg3PtMadePerGame"]
ftAtts = df_players_2019["#FtAttPerGame"]
ftMades = df_players_2019["#FtMadePerGame"]

first_names.zip(last_names, positions, teams, pts, asts, rbds, blks, stls, twoPtAs, twoPtMs, threePtAs, threePtMs, ftAtts, ftMades).each do |fname, lname, pos, tm, pt, ast, rbd, blk, stl, twoPtA, twoPtM, threePtA, threePtM, fta, ftm|
	player_2019 = {year:"2018-2019", first_name: "", last_name: "", position: "", team_name: "", points:0.0, assists:0.0, rebounds:0.0, blocks:0.0, steals:0.0, twoPtFgAtt:0.0, twoPtFgMade:0.0, threePtFgAtt:0.0, threePtFgMade:0.0, freeThrowAtt:0.0, freeThrowMade:0.0, team_id:0}
	player_2019[:first_name] = fname
	player_2019[:last_name] = lname
	player_2019[:position] = pos
	player_2019[:team_name] = tm
	player_2019[:points] = pt
	player_2019[:assists] = ast
	player_2019[:rebounds] = rbd
	player_2019[:blocks] = blk
	player_2019[:steals] = stl
	player_2019[:twoPtFgAtt] = twoPtA
	player_2019[:twoPtFgMade] = twoPtM
	player_2019[:threePtFgAtt] = threePtA
	player_2019[:threePtFgMade] = threePtM
	player_2019[:freeThrowAtt] = fta
	player_2019[:freeThrowMade] = ftm
	teamx = Team.where(abbr: tm, year:"2018-2019")
	player_2019[:team_id] = teamx[0].id
    Player.create([player_2019])
end


# add players data 2018
df_players_2018 = Daru::DataFrame.from_csv('app/data/players-2017-2018-REGULAR.csv')
first_names = df_players_2018["#FirstName"]
last_names = df_players_2018["#LastName"]
positions = df_players_2018["#Position"]
teams = df_players_2018["#Team Abbr."]
pts = df_players_2018["#PtsPerGame"]
asts = df_players_2018["#AstPerGame"]
rbds = df_players_2018["#RebPerGame"]
blks = df_players_2018["#BlkPerGame"]
stls = df_players_2018["#StlPerGame"]
twoPtAs = df_players_2018["#Fg2PtAttPerGame"]
twoPtMs = df_players_2018["#Fg2PtMadePerGame"]
threePtAs = df_players_2018["#Fg3PtAttPerGame"]
threePtMs = df_players_2018["#Fg3PtMadePerGame"]
ftAtts = df_players_2018["#FtAttPerGame"]
ftMades = df_players_2018["#FtMadePerGame"]

first_names.zip(last_names, positions, teams, pts, asts, rbds, blks, stls, twoPtAs, twoPtMs, threePtAs, threePtMs, ftAtts, ftMades).each do |fname, lname, pos, tm, pt, ast, rbd, blk, stl, twoPtA, twoPtM, threePtA, threePtM, fta, ftm|
	player_2018 = {year:"2017-2018", first_name: "", last_name: "", position: "", team_name: "", points:0.0, assists:0.0, rebounds:0.0, blocks:0.0, steals:0.0, twoPtFgAtt:0.0, twoPtFgMade:0.0, threePtFgAtt:0.0, threePtFgMade:0.0, freeThrowAtt:0.0, freeThrowMade:0.0, team_id:0}
	player_2018[:first_name] = fname
	player_2018[:last_name] = lname
	player_2018[:position] = pos
	player_2018[:team_name] = tm
	player_2018[:points] = pt
	player_2018[:assists] = ast
	player_2018[:rebounds] = rbd
	player_2018[:blocks] = blk
	player_2018[:steals] = stl
	player_2018[:twoPtFgAtt] = twoPtA
	player_2018[:twoPtFgMade] = twoPtM
	player_2018[:threePtFgAtt] = threePtA
	player_2018[:threePtFgMade] = threePtM
	player_2018[:freeThrowAtt] = fta
	player_2018[:freeThrowMade] = ftm
	teamx = Team.where(abbr: tm, year:"2017-2018")
	player_2018[:team_id] = teamx[0].id
	Player.create([player_2018])
end


# add players data 2017
df_players_2017 = Daru::DataFrame.from_csv('app/data/players-2016-2017-REGULAR.csv')
first_names = df_players_2017["#FirstName"]
last_names = df_players_2017["#LastName"]
positions = df_players_2017["#Position"]
teams = df_players_2017["#Team Abbr."]
pts = df_players_2017["#PtsPerGame"]
asts = df_players_2017["#AstPerGame"]
rbds = df_players_2017["#RebPerGame"]
blks = df_players_2017["#BlkPerGame"]
stls = df_players_2017["#StlPerGame"]
twoPtAs = df_players_2017["#Fg2PtAttPerGame"]
twoPtMs = df_players_2017["#Fg2PtMadePerGame"]
threePtAs = df_players_2017["#Fg3PtAttPerGame"]
threePtMs = df_players_2017["#Fg3PtMadePerGame"]
ftAtts = df_players_2017["#FtAttPerGame"]
ftMades = df_players_2017["#FtMadePerGame"]

first_names.zip(last_names, positions, teams, pts, asts, rbds, blks, stls, twoPtAs, twoPtMs, threePtAs, threePtMs, ftAtts, ftMades).each do |fname, lname, pos, tm, pt, ast, rbd, blk, stl, twoPtA, twoPtM, threePtA, threePtM, fta, ftm|
	player_2017 = {year:"2016-2017", first_name: "", last_name: "", position: "", team_name: "", points:0.0, assists:0.0, rebounds:0.0, blocks:0.0, steals:0.0, twoPtFgAtt:0.0, twoPtFgMade:0.0, threePtFgAtt:0.0, threePtFgMade:0.0, freeThrowAtt:0.0, freeThrowMade:0.0, team_id:0}
	player_2017[:first_name] = fname
	player_2017[:last_name] = lname
	player_2017[:position] = pos
	player_2017[:team_name] = tm
	player_2017[:points] = pt
	player_2017[:assists] = ast
	player_2017[:rebounds] = rbd
	player_2017[:blocks] = blk
	player_2017[:steals] = stl
	player_2017[:twoPtFgAtt] = twoPtA
	player_2017[:twoPtFgMade] = twoPtM
	player_2017[:threePtFgAtt] = threePtA
	player_2017[:threePtFgMade] = threePtM
	player_2017[:freeThrowAtt] = fta
	player_2017[:freeThrowMade] = ftm
	teamx = Team.where(abbr: tm, year:"2016-2017")
	player_2017[:team_id] = teamx[0].id
	Player.create([player_2017])
end


# add games data 2019
df_games_2019 = Daru::DataFrame.from_csv('app/data/games-2018-2019-REGULAR.csv')
dates = df_games_2019["#Game Date"]
times = df_games_2019["#Game Time"]
home_abrs = df_games_2019["#Home Team Abbr."]
away_abrs = df_games_2019["#Away Team Abbr."]
home_scrs = df_games_2019["#Home Score Total"]
away_scrs = df_games_2019["#Away Score"]
dates.zip(times, home_abrs, away_abrs, home_scrs, away_scrs).each do |dt, ti, h, a, hs, as|
	game_2019 = {date:"", time: "", home: "", away: "", home_score: 0, away_score:0}
	game_2019[:date] = dt
	game_2019[:time] = ti
	game_2019[:home] = h
	game_2019[:away] = a
	game_2019[:home_score] = hs
	game_2019[:away_score] = as
	Game.create([game_2019])
end

# add games data 2018
df_games_2018 = Daru::DataFrame.from_csv('app/data/games-2017-2018-REGULAR.csv')
dates = df_games_2018["#Game Date"]
times = df_games_2018["#Game Time"]
home_abrs = df_games_2018["#Home Team Abbr."]
away_abrs = df_games_2018["#Away Team Abbr."]
home_scrs = df_games_2018["#Home Score Total"]
away_scrs = df_games_2018["#Away Score"]
dates.zip(times, home_abrs, away_abrs, home_scrs, away_scrs).each do |dt, ti, h, a, hs, as|
	game_2018 = {date:"", time: "", home: "", away: "", home_score: 0, away_score:0}
	game_2018[:date] = dt
	game_2018[:time] = ti
	game_2018[:home] = h
	game_2018[:away] = a
	game_2018[:home_score] = hs
	game_2018[:away_score] = as
	Game.create([game_2018])
end

# add games data 2017
df_games_2017 = Daru::DataFrame.from_csv('app/data/games-2016-2017-REGULAR.csv')
dates = df_games_2017["#Game Date"]
times = df_games_2017["#Game Time"]
home_abrs = df_games_2017["#Home Team Abbr."]
away_abrs = df_games_2017["#Away Team Abbr."]
home_scrs = df_games_2017["#Home Score Total"]
away_scrs = df_games_2017["#Away Score"]
dates.zip(times, home_abrs, away_abrs, home_scrs, away_scrs).each do |dt, ti, h, a, hs, as|
	game_2017 = {date:"", time: "", home: "", away: "", home_score: 0, away_score:0}
	game_2017[:date] = dt
	game_2017[:time] = ti
	game_2017[:home] = h
	game_2017[:away] = a
	game_2017[:home_score] = hs
	game_2017[:away_score] = as
	Game.create([game_2017])
end
