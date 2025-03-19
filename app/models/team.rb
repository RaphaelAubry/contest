class Team < ApplicationRecord
  has_many :players, dependent: :destroy

  validates :name, presence: true
  validates :name, length: { minimum: 1, too_short: "%{count} characters is the minimum allowed" }
  validates :name, length: { maximum: 50, too_long: "%{count} characters is the maximum allowed" }
  validates :city, presence: true
  validates :name, length: { minimum: 1, too_short: "%{count} characters is the minimum allowed" }
  validate :team_capacity

  def team_capacity
    if players.present?
      if players.length >= 11
        errors.add :players, "The team has reached maximum capacity, 11 players"
      end
    end
  end

  class << self
    def generate
      begin
        until Team.count == 8 do
          Team.create(name: Faker::NatoPhoneticAlphabet.code_word, city: Faker::Locations::Australia.location)
        end
      rescue Exception => e
        Rails.logger.debug "Exception class : #{e.class}"
        Rails.logger.debug "Exception message : #{e.message}"
        Rails.logger.debug "Exception backtrace : \n#{e.backtrace.join("\n")}"
      end
    end

    def not_full
      Team.all.map { |team| team if team.players.count < 11 }.compact
    end
  end

end
