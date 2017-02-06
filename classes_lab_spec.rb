require('minitest/autorun')
require('minitest/rg')

require_relative('classes_lab.rb')

class TestStudent < MiniTest::Test

  def test_student_name
    person = Student.new("Alice", 10)
    assert_equal(person.name, "Alice")
  end

  def test_cohort
    person = Student.new("Adam", 10)
    assert_equal(10, person.cohort)
  end

  def test_set_name
    person = Student.new("Alice", 10)
    person.name = "Alison"
    assert_equal("Alison", person.name)
  end

  def test_set_cohort
    person = Student.new("Adam", 10)
    person.cohort = 11
    assert_equal(11, person.cohort)
  end


end

