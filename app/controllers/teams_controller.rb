class TeamsController < ApplicationController
  before_action :find_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)

    if @team.save
      respond_to do |format|
        format.html { redirect_to teams_path, notice: "Team registered" }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @team.update(team_params)
      respond_to do |format|
        format.html { redirect_to teams_path, notice: "Team updated" }
      end
    end
  end

  def destroy
    if @team.destroy
      respond_to do |format|
        format.html { redirect_to teams_path, notice: "Team destroyed" }
        format.turbo_stream
      end
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :city)
  end

  def find_team
    @team = Team.find(params[:id])
  end
end
