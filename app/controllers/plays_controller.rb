class PlaysController < ApplicationController
  def tournament
    @teams = Team.all.sample(8)
  end

  def generate
    Team.generate if Team.count < 8
    Player.generate if Player.count < 8 * 11
    @teams = Team.all.sample(8)
  end

  def play
    if params[:teams]
      @teams = Team.find(params[:teams])
      if @teams.length == 8
        result = Battle::Result.generate(params[:teams])
        result.calculate!
        @teams.update with: result
        @teams.sort_by_points
      else
        redirect_to generate_path
      end
    else
      redirect_to generate_path
    end
  end
end
