class SchedulesController < ApplicationController
    
    def index
        @games = Game.all
        @gamesteam = GamesTeam.all
        @teams = Team.all
        @team = 5
    end
end
