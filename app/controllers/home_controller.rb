class HomeController < ApplicationController
  def index
  
    @players = Player.order(params[:sort]).reverse
    @teams = Team.all
        
  end
end
