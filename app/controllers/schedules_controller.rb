class SchedulesController < ApplicationController
    def index
        @games = Game.all
        @gamesteam = GamesTeam.all
        @teams = Team.all
    end
end
