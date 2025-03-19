require "test_helper"

class PlayerTest < ActiveSupport::TestCase
  test "Un joueur doit avoir un nom et un poste" do
    player = Player.new(name: players(:one).name, position: players(:one).position)
    player.save
    assert player.name
  end

  test "Un joueur doit avoir un poste 2" do
    player = Player.new(name: players(:two).name, position: players(:two).position)
    assert_not player.save
  end

  test "Un joueur doit avoir un nom 2" do
    player = Player.new(name: players(:three).name, position: players(:three).position)
    assert_not player.save
  end

  test "Un joueur doit avoir un nom et une position" do
    player = Player.new(name: players(:four).name, position: players(:four).position)
    assert_not player.save
  end
end
