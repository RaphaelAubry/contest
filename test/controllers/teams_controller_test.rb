require "test_helper"

class TeamsControllerTest < ActionDispatch::IntegrationTest
  test "Teams routes index" do
    assert_generates "/teams", controller: "teams", action: "index"
  end

  test "Teams routes new" do
    assert_generates "/teams/new", controller: "teams", action: "new"
  end

  test "Teams routes create" do
    assert_generates "/teams", controller: "teams", action: "create"
  end

  test "Teams routes show" do
    assert_routing({ method: 'get', path: '/teams/1' }, { controller: "teams", action: "show", id: "1" })
  end

  test "Teams routes edit" do
    assert_generates "/teams/1/edit", controller: "teams", action: "edit", id: 1
  end

  test "Teams routes update" do
    assert_routing({ method: 'put', path: '/teams/1' }, { controller: "teams", action: "update", id: "1" })
  end

  test "Teams routes destroy" do
    assert_generates "/teams/1", controller: "teams", action: "destroy", id: 1
  end
end
