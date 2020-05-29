class PokeTeamMovesController < ApplicationController
  before_action :set_poke_team_move, only: [:show, :edit, :update, :destroy]

  # GET /poke_team_moves
  # GET /poke_team_moves.json
  def index
    @poke_team_moves = PokeTeamMove.all
  end

  # GET /poke_team_moves/1
  # GET /poke_team_moves/1.json
  def show
  end

  # GET /poke_team_moves/new
  def new
    @poke_team_move = PokeTeamMove.new
  end

  # GET /poke_team_moves/1/edit
  def edit
  end

  # POST /poke_team_moves
  # POST /poke_team_moves.json
  def create
    @poke_team_move = PokeTeamMove.new(poke_team_move_params)

    respond_to do |format|
      if @poke_team_move.save
        format.html { redirect_to @poke_team_move, notice: 'Poke team move was successfully created.' }
        format.json { render :show, status: :created, location: @poke_team_move }
      else
        format.html { render :new }
        format.json { render json: @poke_team_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poke_team_moves/1
  # PATCH/PUT /poke_team_moves/1.json
  def update
    respond_to do |format|
      if @poke_team_move.update(poke_team_move_params)
        format.html { redirect_to @poke_team_move, notice: 'Poke team move was successfully updated.' }
        format.json { render :show, status: :ok, location: @poke_team_move }
      else
        format.html { render :edit }
        format.json { render json: @poke_team_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poke_team_moves/1
  # DELETE /poke_team_moves/1.json
  def destroy
    @poke_team_move.destroy
    respond_to do |format|
      format.html { redirect_to poke_team_moves_url, notice: 'Poke team move was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poke_team_move
      @poke_team_move = PokeTeamMove.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poke_team_move_params
      params.fetch(:poke_team_move, {})
    end
end
