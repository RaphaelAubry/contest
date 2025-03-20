require "test_helper"

class PlayersControllerTest < ActionDispatch::IntegrationTest
  test "Players routes index" do
    assert_generates "/players", controller: "players", action: "index"
  end

  test "Players routes new" do
    assert_generates "/players/new", controller: "players", action: "new"
  end

  test "Players routes create" do
    assert_generates "/players", controller: "players", action: "create"
  end

  test "Players routes show" do
    assert_routing({ method: 'get', path: '/players/1' }, { controller: "players", action: "show", id: "1" })
  end

  test "Players routes edit" do
    assert_generates "/players/1/edit", controller: "players", action: "edit", id: 1
  end

  test "Players routes update" do
    assert_routing({ method: 'put', path: '/players/1' }, { controller: "players", action: "update", id: "1" })
  end

  test "Players routes destroy" do
    assert_generates "/players/1", controller: "players", action: "destroy", id: 1
  end

  test "Un dropdown permet de sélectionner une équipe précédemment créer dans lequel intégrer le joueur" do
    @player = Player.new
    get new_player_url(@player)
    assert_select "select[name='player[team_id]']"
    assert_select "select[name='player[team_id]'] option[value='1']"
  end

  test "Le poste est selectable dans un dropdown (liste déroulante)" do
    @player = Player.new
    get new_player_url(@player)
    assert_select "select[name='player[position]']"
    assert_select "select[name='player[position]'] option[value='Heal']"
    assert_select "select[name='player[position]'] option[value='Tank']"
    assert_select "select[name='player[position]'] option[value='DPS']"
  end
end
