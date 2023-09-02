class GradeSchool
  property students

  def initialize
    @students = Hash(Int32, Array(String)).new { |hash, key| hash[key] = [] of String }
  end

  def add(student, grade)
    if roster.includes?(student)
      return false
    end
    students[grade] << student
    true
  end

  def roster
    students.to_a.sort_by { |grade, names| grade }.map { |_, names| names.sort }.flatten
  end

  def grade(number)
    students[number].sort
  end
end
