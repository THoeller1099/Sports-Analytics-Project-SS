require 'httparty'

class Http
  API_URL = 'https://www.balldontlie.io/api/v1/stats'
  API_players = 'https://api.mysportsfeeds.com/v2.1/pull/nba/players.json?season=current'
  Auth = {:username => '07d88158-76c4-4eee-a408-0a898c', :password => 'MYSPORTSFEEDS'}
  
  def unique_url
    response = HTTParty.get(API_URL)
    # TODO more error checking (500 error, etc)
    puts response.body
    #json = JSON.parse(response.body)
    #json['url']
  end
  def get_all
    #response = HTTParty.get(API_URL + '?seasons[]=2019&per_page=100&postseason=false')
    
    auth = {:username => '07d88158-76c4-4eee-a408-0a898c', :password => 'MYSPORTSFEEDS'}

    response = HTTParty.get(API_players, :basic_auth => Auth)
    
    
    players = response.parsed_response["players"]
  
    players.each do |player|
      puts player["player"]["lastName"]
      #puts player["player.lastName"]
      #puts player["id"]
    end
  end
end