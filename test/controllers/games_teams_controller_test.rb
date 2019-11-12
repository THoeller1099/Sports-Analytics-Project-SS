require 'test_helper'

class GamesTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @games_team = games_teams(:one)
  end

  test "should get index" do
    get games_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_games_team_url
    assert_response :success
  end

  test "should create games_team" do
    assert_difference('GamesTeam.count') do
      post games_teams_url, params: { games_team: { game_id: @games_team.game_id, team_id: @games_team.team_id } }
    end

    assert_redirected_to games_team_url(GamesTeam.last)
  end

  test "should show games_team" do
    get games_team_url(@games_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_games_team_url(@games_team)
    assert_response :success
  end

  test "should update games_team" do
    patch games_team_url(@games_team), params: { games_team: { game_id: @games_team.game_id, team_id: @games_team.team_id } }
    assert_redirected_to games_team_url(@games_team)
  end

  test "should destroy games_team" do
    assert_difference('GamesTeam.count', -1) do
      delete games_team_url(@games_team)
    end

    assert_redirected_to games_teams_url
  end
end
