class PlaysController < ApplicationController
  def tournament
  end

  def generate
    Team.generate if Team.count < 8
    Player.generate if Player.count < 8 * 11
    @teams = Team.all.sample(8)





  end
end
