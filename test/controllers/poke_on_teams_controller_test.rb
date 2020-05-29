require 'test_helper'

class PokeOnTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poke_on_team = poke_on_teams(:one)
  end

  test "should get index" do
    get poke_on_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_poke_on_team_url
    assert_response :success
  end

  test "should create poke_on_team" do
    assert_difference('PokeOnTeam.count') do
      post poke_on_teams_url, params: { poke_on_team: {  } }
    end

    assert_redirected_to poke_on_team_url(PokeOnTeam.last)
  end

  test "should show poke_on_team" do
    get poke_on_team_url(@poke_on_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_poke_on_team_url(@poke_on_team)
    assert_response :success
  end

  test "should update poke_on_team" do
    patch poke_on_team_url(@poke_on_team), params: { poke_on_team: {  } }
    assert_redirected_to poke_on_team_url(@poke_on_team)
  end

  test "should destroy poke_on_team" do
    assert_difference('PokeOnTeam.count', -1) do
      delete poke_on_team_url(@poke_on_team)
    end

    assert_redirected_to poke_on_teams_url
  end
end
