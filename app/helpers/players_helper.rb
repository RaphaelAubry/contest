module PlayersHelper
  def available_teams
    Team.all.map { |team| [ team.name, team.id ] if team.players.count < 11 }.compact
  end
end
