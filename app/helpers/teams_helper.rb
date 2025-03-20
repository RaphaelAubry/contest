module TeamsHelper
  def can_start_tournament?(with: teams)
    with.count == 8 ? true : false
  end
end
