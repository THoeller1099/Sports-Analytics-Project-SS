class HomeController < ApplicationController
  def index
  
    @players = Player.where(year:"2018-2019").order(params[:sort], :asc).paginate(:page => params[:page], :per_page => 25).reverse_order
    @teams = Team.where(year: "2018-2019").paginate(:page => params[:page], :per_page => 10)
    
  end
end
