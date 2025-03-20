class Player < ApplicationRecord
  POSITIONS = %w[Heal Tank DPS].freeze

  belongs_to :team

  validates :name, presence: true
  validates :position, presence: true
  validates :position, inclusion: { in: POSITIONS }


  def team_capacity
    if team.players.present?
      if team.players.length >= 11
        errors.add :players, "The team has reached maximum capacity, 11 players"
      end
    end
  end

  class << self
    def generate
      begin
        until Player.count == 8 * 11
          Player.create(name: Faker::FunnyName.name, position: POSITIONS[rand(0..2)], team_id: Team.not_full[0].id)
        end
      rescue Exception => e
        Rails.logger.debug "Exception class : #{e.class}"
        Rails.logger.debug "Exception message : #{e.message}"
        Rails.logger.debug "Exception backtrace : \n#{e.backtrace.join("\n")}"
      end
    end
  end
end
