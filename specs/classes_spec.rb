require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class.rb')
require_relative('../sports_class.rb')
require_relative('../library_class.rb')

class ClassesTest < MiniTest::Test

  def setup
    @student1 = Student.new("John", "G20")
    @team1 = Sports.new("Pittsburgh Steelers", ["Big Ben", "Antonio Brown"], "Mike Tomlin", 0)
  end

  # STUDENT CLASS SECTION ////////////////////////////////////////////////////

  def test_get_student_name
    assert_equal("John", @student1.get_student_name)
  end

  def test_get_student_cohort
    assert_equal("G20", @student1.get_student_cohort)
  end

  def test_set_student_name
    @student1.set_student_name("James")
    assert_equal("James", @student1.get_student_name)
  end

  def test_set_student_cohort
    @student1.set_student_cohort("G15")
    assert_equal("G15", @student1.get_student_cohort)
  end

  def test_student_speech
    assert_equal("I can talk!", @student1.student_speech)
  end

  def test_favourite_language
    assert_equal("I love Ruby!", @student1.favourite_language("Ruby"))
  end

# SPORTS CLASS SECTION /////////////////////////////////////////////////

  def test_get_team_name
    assert_equal("Pittsburgh Steelers", @team1.team_name)
  end

  def test_get_players_list
    assert_equal(["Big Ben", "Antonio Brown"], @team1.players_list)
  end

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

# LIBRARY CLASS SECTION ////////////////////////////////////////////


end
