class Array
  # method for array to set Result instance variable @data
  def to_result
    map { |team_id| [ team_id, { points: 0, kills: 0, killed: 0 } ] }.to_h
  end

  # methods for array of Team instances
  def sort_by_points
    sort! do |team_a, team_b|
      if team_a.is_a?(Team) && team_b.is_a?(Team)
        team_b.points <=> team_a.points
      end
    end
  end

  def update(with: result)
    each do |team|
      if team.is_a? Team
        team.points = with.data[team.id.to_s][:points]
        team.kills = with.data[team.id.to_s][:kills]
        team.killed = with.data[team.id.to_s][:killed]
      end
    end
  end
end
