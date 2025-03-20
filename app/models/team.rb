require './lib/battle/result.rb'

class Team < ApplicationRecord
  has_many :players, dependent: :destroy

  validates :name, presence: true
  validates :name, length: { minimum: 1, too_short: "%{count} characters is the minimum allowed" }
  validates :name, length: { maximum: 50, too_long: "%{count} characters is the maximum allowed" }
  validates :city, presence: true
  validates :name, length: { minimum: 1, too_short: "%{count} characters is the minimum allowed" }

  # instance and class methods for PlaysController
  Battle::ATTRIBUTES.each do |attr|
    define_method(attr) do
      instance_variable_get("@#{attr}")
    end

    define_method("#{attr}=") do |value|
      instance_variable_set("@#{attr}", value)
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
