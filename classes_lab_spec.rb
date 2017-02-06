require('minitest/autorun')
require('minitest/rg')

require_relative('classes_lab.rb')

class Student < MiniTest::Test

  def test_student_name
    person = Student.new("Alice", 10)
    assert_equal(person.student_name, "Alice")
  end

end
