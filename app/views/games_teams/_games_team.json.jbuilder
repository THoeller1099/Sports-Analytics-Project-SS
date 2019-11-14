json.extract! games_team, :id, :team_id, :game_id, :created_at, :updated_at
json.url games_team_url(games_team, format: :json)
