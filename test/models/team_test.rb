require "test_helper"

class TeamTest < ActiveSupport::TestCase
  test "L'équipe doit disposer d'un nom" do
    team = Team.new(name: teams(:one).name, city: teams(:one).city)
    team.save
    assert team.name
  end

  test "L'équipe doit disposer d'une ville" do
    team = Team.new(name: teams(:two).name, city: teams(:two).city)
    team.save
    assert team.city
  end

  test "L'équipe doit disposer d'un nom, 50 caractères maximum" do
    team = Team.new(name: teams(:three).name, city: teams(:three).city)
    assert_not team.save
  end

  test "L'équipe doit disposer d'un nom ou d'une ville 1" do
    team = Team.new(name: teams(:four).name, city: teams(:four).city)
    assert_not team.save
  end

  test "L'équipe doit disposer d'un nom ou d'une ville 2" do
    team = Team.new(name: teams(:five).name, city: teams(:five).city)
    assert_not team.save
  end

  test "L'équipe doit disposer d'un nom ou d'une ville 3" do
    team = Team.new(name: teams(:six).name, city: teams(:six).city)
    assert_not team.save
  end
end
