require('minitest/autorun')
require('minitest/rg')

require_relative('classes_lab.rb')

class TestStudent < MiniTest::Test

  def test_student_name
    person = Student.new("Alice", 10)
    assert_equal(person.name, "Alice")
  end

end
