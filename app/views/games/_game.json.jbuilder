json.extract! game, :id, :date, :home, :away, :home_score, :away_score, :ot, :created_at, :updated_at
json.url game_url(game, format: :json)
