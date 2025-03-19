class Team < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { minimum: 1, too_short: "%{count} characters is the minimum allowed" }
  validates :name, length: { maximum: 50, too_long: "%{count} characters is the maximum allowed" }
  validates :city, presence: true
  validates :name, length: { minimum: 1, too_short: "%{count} characters is the minimum allowed" }
end
