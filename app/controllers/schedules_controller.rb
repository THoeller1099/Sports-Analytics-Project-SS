class SchedulesController < ApplicationController
    
    def index
        @games = Game.all
        @gamesteam = GamesTeam.all
        @teams = Team.all
    end
    
    def show
        render json 
    end 
end
