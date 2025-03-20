require "test_helper"

class PlaysControllerTest < ActionDispatch::IntegrationTest
  test "should get tournament" do
    get tournament_url
    assert_response :success
  end

  test "Un bouton permet de créer et peupler automatiquement 8 équipes de 11 joueurs 1" do
    get tournament_url
    assert_select "a.button"
  end

  test "Un bouton permet de créer et peupler automatiquement 8 équipes de 11 joueurs 2" do
    get tournament_url
    assert_select "a[href='/generate']"
  end
end
