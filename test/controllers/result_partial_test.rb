class ResultPartialTest < ActionView::TestCase
   test "Le résultat des matchs est afficher correctement" do
    render "plays/result", teams: teams

    assert_select "table-data", "Equipe"
    assert_select "table-data", "Points"
    assert_select "table-data", "kill reçu"
    assert_select "table-data", "kill marqués"
  end
end
