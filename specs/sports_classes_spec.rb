require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_class.rb')


class SportsClassesTest < MiniTest::Test

  def setup
    @team1 = Sports.new("Pittsburgh Steelers", ["Big Ben", "Antonio Brown"], "Mike Tomlin", 0)
  end

  def test_get_team_name
    assert_equal("Pittsburgh Steelers", @team1.team_name)
  end

  def test_get_players_list
    assert_equal(["Big Ben", "Antonio Brown"], @team1.players_list)
  end
  # Better to return things like array.count() rather than actual arrays when testing
  # .copy() when having to return actual arrays - prevents them being modified?

  def test_get_coach_name
    assert_equal("Mike Tomlin", @team1.coach_name)
  end

  def test_update_coach_name
    @team1.coach_name = "Somebody Else"
    assert_equal("Somebody Else", @team1.coach_name)
  end

  def test_add_new_player
    @team1.add_new_player("Odell Beckham Jr")
    assert_equal(["Big Ben", "Antonio Brown", "Odell Beckham Jr"], @team1.players_list)
  end

  def test_check_for_player
    assert_equal(true, @team1.check_for_player("Antonio Brown"))
  end

  def test_add_points_after_win
    @team1.add_points("win")
    assert_equal(1, @team1.points)
  end

end
