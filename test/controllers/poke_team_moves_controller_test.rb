require 'test_helper'

class PokeTeamMovesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poke_team_move = poke_team_moves(:one)
  end

  test "should get index" do
    get poke_team_moves_url
    assert_response :success
  end

  test "should get new" do
    get new_poke_team_move_url
    assert_response :success
  end

  test "should create poke_team_move" do
    assert_difference('PokeTeamMove.count') do
      post poke_team_moves_url, params: { poke_team_move: {  } }
    end

    assert_redirected_to poke_team_move_url(PokeTeamMove.last)
  end

  test "should show poke_team_move" do
    get poke_team_move_url(@poke_team_move)
    assert_response :success
  end

  test "should get edit" do
    get edit_poke_team_move_url(@poke_team_move)
    assert_response :success
  end

  test "should update poke_team_move" do
    patch poke_team_move_url(@poke_team_move), params: { poke_team_move: {  } }
    assert_redirected_to poke_team_move_url(@poke_team_move)
  end

  test "should destroy poke_team_move" do
    assert_difference('PokeTeamMove.count', -1) do
      delete poke_team_move_url(@poke_team_move)
    end

    assert_redirected_to poke_team_moves_url
  end
end
