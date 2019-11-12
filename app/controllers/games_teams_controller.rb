class GamesTeamsController < ApplicationController
  before_action :set_games_team, only: [:show, :edit, :update, :destroy]

  # GET /games_teams
  # GET /games_teams.json
  def index
    @games_teams = GamesTeam.all
  end

  # GET /games_teams/1
  # GET /games_teams/1.json
  def show
  end

  # GET /games_teams/new
  def new
    @games_team = GamesTeam.new
  end

  # GET /games_teams/1/edit
  def edit
  end

  # POST /games_teams
  # POST /games_teams.json
  def create
    @games_team = GamesTeam.new(games_team_params)

    respond_to do |format|
      if @games_team.save
        format.html { redirect_to @games_team, notice: 'Games team was successfully created.' }
        format.json { render :show, status: :created, location: @games_team }
      else
        format.html { render :new }
        format.json { render json: @games_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games_teams/1
  # PATCH/PUT /games_teams/1.json
  def update
    respond_to do |format|
      if @games_team.update(games_team_params)
        format.html { redirect_to @games_team, notice: 'Games team was successfully updated.' }
        format.json { render :show, status: :ok, location: @games_team }
      else
        format.html { render :edit }
        format.json { render json: @games_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games_teams/1
  # DELETE /games_teams/1.json
  def destroy
    @games_team.destroy
    respond_to do |format|
      format.html { redirect_to games_teams_url, notice: 'Games team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_games_team
      @games_team = GamesTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def games_team_params
      params.require(:games_team).permit(:team_id, :game_id)
    end
end
