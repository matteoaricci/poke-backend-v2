require "application_system_test_case"

class PokeOnTeamsTest < ApplicationSystemTestCase
  setup do
    @poke_on_team = poke_on_teams(:one)
  end

  test "visiting the index" do
    visit poke_on_teams_url
    assert_selector "h1", text: "Poke On Teams"
  end

  test "creating a Poke on team" do
    visit poke_on_teams_url
    click_on "New Poke On Team"

    click_on "Create Poke on team"

    assert_text "Poke on team was successfully created"
    click_on "Back"
  end

  test "updating a Poke on team" do
    visit poke_on_teams_url
    click_on "Edit", match: :first

    click_on "Update Poke on team"

    assert_text "Poke on team was successfully updated"
    click_on "Back"
  end

  test "destroying a Poke on team" do
    visit poke_on_teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poke on team was successfully destroyed"
  end
end
