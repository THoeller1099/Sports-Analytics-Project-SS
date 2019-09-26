json.extract! team, :id, :name, :location, :roster, :coach, :record, :created_at, :updated_at
json.url team_url(team, format: :json)
