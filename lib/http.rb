require 'httparty'

class Http
  API_players = 'https://api.mysportsfeeds.com/v2.1/pull/nba/2019-2020-regular/player_stats_totals.json'
  API_teams = 'https://api.mysportsfeeds.com/v2.1/pull/nba/2019-2020-regular/team_stats_totals.json'
  API_games = 'https://api.mysportsfeeds.com/v2.1/pull/nba/2019-2020-regular/games.json'
  
  Auth = {:username => '07d88158-76c4-4eee-a408-0a898c', :password => 'MYSPORTSFEEDS'}
  
  def unique_url
    response = HTTParty.get(API_URL)
    # TODO more error checking (500 error, etc)
    puts response.body
    #json = JSON.parse(response.body)
    #json['url']
  end
  def get_all_players
    response = HTTParty.get(API_players, :basic_auth => Auth)
    
    players = response.parsed_response["playerStatsTotals"]
  
    # players.each do |player|
    #   puts player["player"]["lastName"]
      
    #   #puts player["player.lastName"]
    #   #puts player["id"]
    # end
    return players
  end
  def get_all_teams
    response = HTTParty.get(API_teams, :basic_auth => Auth)
    return response.parsed_response["teamStatsTotals"]
  end
  
  def get_all_games
    response = HTTParty.get(API_games, :basic_auth => Auth)
    return response.parsed_response["games"]
  end
end