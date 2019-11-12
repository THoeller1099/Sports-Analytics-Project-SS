require "application_system_test_case"

class GamesTeamsTest < ApplicationSystemTestCase
  setup do
    @games_team = games_teams(:one)
  end

  test "visiting the index" do
    visit games_teams_url
    assert_selector "h1", text: "Games Teams"
  end

  test "creating a Games team" do
    visit games_teams_url
    click_on "New Games Team"

    fill_in "Game", with: @games_team.game_id
    fill_in "Team", with: @games_team.team_id
    click_on "Create Games team"

    assert_text "Games team was successfully created"
    click_on "Back"
  end

  test "updating a Games team" do
    visit games_teams_url
    click_on "Edit", match: :first

    fill_in "Game", with: @games_team.game_id
    fill_in "Team", with: @games_team.team_id
    click_on "Update Games team"

    assert_text "Games team was successfully updated"
    click_on "Back"
  end

  test "destroying a Games team" do
    visit games_teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Games team was successfully destroyed"
  end
end
