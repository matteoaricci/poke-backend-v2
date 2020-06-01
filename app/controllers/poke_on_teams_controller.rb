class PokeOnTeamsController < ApplicationController
  before_action :set_poke_on_team, only: [:show, :edit, :update, :destroy]

  # GET /poke_on_teams
  # GET /poke_on_teams.json
  def index
    @poke_on_teams = PokeOnTeam.all
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
    poke_on_team = PokeOnTeam.create(poke_on_team_params)

    render json: poke_on_team
  end

  # PATCH/PUT /poke_on_teams/1
  # PATCH/PUT /poke_on_teams/1.json
  def update
    respond_to do |format|
      if @poke_on_team.update(poke_on_team_params)
        format.html { redirect_to @poke_on_team, notice: 'Poke on team was successfully updated.' }
        format.json { render :show, status: :ok, location: @poke_on_team }
      else
        format.html { render :edit }
        format.json { render json: @poke_on_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poke_on_teams/1
  # DELETE /poke_on_teams/1.json
  def destroy
    @poke_on_team.destroy
    respond_to do |format|
      format.html { redirect_to poke_on_teams_url, notice: 'Poke on team was successfully destroyed.' }
      format.json { head :no_content }
    end
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
