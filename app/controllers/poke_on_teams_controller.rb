class PokeOnTeamsController < ApplicationController
  before_action :set_poke_on_team, only: [:show, :edit, :update, :destroy]

  # GET /poke_on_teams
  # GET /poke_on_teams.json
  def index
    poke_on_teams = PokeOnTeam.all
    render json: poke_on_teams
  end

  def get_pokemon_on_team
    current_team = PokeOnTeam.where(user_team_id: params[:id])
    # move_sets = current_team.map {|poke| poke.pokemon.move_sets }
    # puts move_sets
    move_sets = current_team.map {|poke| if poke.pokemon_id
      Pokemon.find(poke.pokemon_id).move_sets
    end}

    pokemon_moves = current_team.map {|poke| poke.poke_team_moves}

    render json: {current_team: current_team, move_sets: move_sets, pokemon_moves: pokemon_moves}
  end

  # GET /poke_on_teams/1
  # GET /poke_on_teams/1.json
  def show
  end

  # GET /poke_on_teams/new
  def new
    @poke_on_team = PokeOnTeam.new
  end

  # GET /poke_on_teams/1/edit
  def edit
  end

  # POST /poke_on_teams
  # POST /poke_on_teams.json
  def create
    new_poke = PokeOnTeam.create(poke_on_team_params)
    render json: new_poke
  end

  # PATCH/PUT /poke_on_teams/1
  # PATCH/PUT /poke_on_teams/1.json
  def update
   current_poke = PokeOnTeam.find(params[:id])
   current_poke.update(poke_on_team_params)

   if current_poke.pokemon_id
   move_set = Pokemon.find(current_poke.pokemon_id)
   end
   render json: {current_poke: current_poke, move_set: move_set}
  end

  # DELETE /poke_on_teams/1
  # DELETE /poke_on_teams/1.json
  def destroy
    deleted_poke = @poke_on_team.destroy
    
    render json: deleted_poke
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poke_on_team
      @poke_on_team = PokeOnTeam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poke_on_team_params
      params.require(:poke_on_team).permit(:pokemon_id, :nickname, :user_team_id, :hp_ev, :attack_ev, :defense_ev, :spattack_ev, :spdefense_ev, :speed_ev, :hp_iv, :attack_iv, :defense_iv, :spattack_iv, :spdefense_iv, :speed_iv)
    end
end
