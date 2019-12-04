class HomeController < ApplicationController
  def index
  
    @players = Player.where(year:"2018-2019").order(params[:sort]).reverse
    @teams = Team.all
        
  end
end
