require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class.rb')


class ClassesTest < MiniTest::Test

  def setup
    @student1 = Student.new("John", "G20")
  end


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

end
