require 'httparty'

class Http
  API_URL = 'https://www.balldontlie.io/api/v1/stats'
  API_players = 'https://balldontlie.io/api/v1/players'

  def unique_url
    response = HTTParty.get(API_URL)
    # TODO more error checking (500 error, etc)
    puts response.body
    #json = JSON.parse(response.body)
    #json['url']
  end
  def get_all
    #response = HTTParty.get(API_URL + '?seasons[]=2019&per_page=100&postseason=false')
    response = HTTParty.get(API_players + '?per_page=100')
    tot_pages = response.parsed_response["meta"]["total_pages"]
    puts tot_pages
    for num in 1..tot_pages do
      response = HTTParty.get(API_players + "?per_page=100&page=#{num}")
      data += response.parsed_response["data"]
      data.each do |item|
        puts item["first_name"]
        puts item["last_name"]
        puts item["id"]
      end
    end
    #puts response.body
  end
end