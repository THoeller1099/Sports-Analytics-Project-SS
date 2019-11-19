require 'http'
class HomeController < ApplicationController
  def index
  
    @players = Player.where(year:"2018-2019").order(params[:sort]).reverse
    @teams = Team.all
    
    puts "hello buddies"
    api = Http.new()
    api.get_all
  end
end
