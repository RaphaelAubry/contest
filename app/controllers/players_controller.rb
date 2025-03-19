class PlayersController < ApplicationController
  before_action :player, only: [ :show, :edit, :update, :destroy ]
  before_action :players, only: [ :index, :destroy ]

  def index
  end

  def new
    @player = Player.new
    @teams = Team.all
  end

  def create
    @player = Player.create(player_params)

    if @player.save
      respond_to do |format|
        format.html { redirect_to players_path, notice: "Player registered" }
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
    if @player.update(player_params)
      respond_to do |format|
        format.html { redirect_to players_path, notice: "player updated" }
      end
    end
  end

  def destroy
    if @player.destroy
      respond_to do |format|
        format.html { redirect_to players_path, notice: "Player destroyed" }
        format.turbo_stream
      end
    end
  end

  private

  def player_params
    params.require(:player).permit(:name, :position, :team_id)
  end

  def player
    @player = Player.find(params[:id])
  end

  def players
    @players = Player.all
  end
end
