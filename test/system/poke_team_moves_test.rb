require "application_system_test_case"

class PokeTeamMovesTest < ApplicationSystemTestCase
  setup do
    @poke_team_move = poke_team_moves(:one)
  end

  test "visiting the index" do
    visit poke_team_moves_url
    assert_selector "h1", text: "Poke Team Moves"
  end

  test "creating a Poke team move" do
    visit poke_team_moves_url
    click_on "New Poke Team Move"

    click_on "Create Poke team move"

    assert_text "Poke team move was successfully created"
    click_on "Back"
  end

  test "updating a Poke team move" do
    visit poke_team_moves_url
    click_on "Edit", match: :first

    click_on "Update Poke team move"

    assert_text "Poke team move was successfully updated"
    click_on "Back"
  end

  test "destroying a Poke team move" do
    visit poke_team_moves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poke team move was successfully destroyed"
  end
end
