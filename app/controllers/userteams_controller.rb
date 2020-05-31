class UserteamsController < ApplicationController
  before_action :set_userteam, only: [:show, :edit, :update, :destroy]

  # GET /userteams
  # GET /userteams.json
  def index
    @userteams = Userteam.all
  end

  def get_users_teams
    current_user = User.find(params[:id])
    teams = current_user.userteams 

    render json: teams
  end

  # GET /userteams/1
  # GET /userteams/1.json
  def show
  end

  # GET /userteams/new
  def new
    @userteam = Userteam.new
  end

  # GET /userteams/1/edit
  def edit
  end

  # POST /userteams
  # POST /userteams.json
  def create
    userteam = Userteam.create(userteam_params)

    render json: userteam
  end

  # PATCH/PUT /userteams/1
  # PATCH/PUT /userteams/1.json
  def update
    respond_to do |format|
      if @userteam.update(userteam_params)
        format.html { redirect_to @userteam, notice: 'Userteam was successfully updated.' }
        format.json { render :show, status: :ok, location: @userteam }
      else
        format.html { render :edit }
        format.json { render json: @userteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userteams/1
  # DELETE /userteams/1.json
  def destroy
    teamId = params[:id]
    @userteam.destroy
    
    render json: {status: "Team: #{teamId} was successfully destroyed", id: teamId}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userteam
      @userteam = Userteam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def userteam_params
      params.require(:userteam).permit(:user_id)
    end
end
