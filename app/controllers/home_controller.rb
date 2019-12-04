class HomeController < ApplicationController
  def index
  
    @players = Player.order(params[:sort], :asc).paginate(:page => params[:page], :per_page => 25).reverse_order
    @teams = Team.paginate(:page => params[:page], :per_page => 10)
    
  end
end
