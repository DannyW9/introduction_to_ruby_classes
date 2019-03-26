class Student

  def initialize(student_name, cohort)
  @student_name = student_name
  @cohort = cohort
  end

  def get_student_name
    return @student_name
  end

  def get_student_cohort
    return @cohort
  end

  def set_student_name(name)
    @student_name = name
  end

  def set_student_cohort(cohort)
    @cohort = cohort
  end

  def student_speech
    return "I can talk!"
  end

  def favourite_language(language)
    return "I love #{language}!"
  end





end
