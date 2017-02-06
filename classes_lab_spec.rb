require('minitest/autorun')
require('minitest/rg')

require_relative('classes_lab.rb')

class TestStudent < MiniTest::Test

  def test_student_name
    lisa = Student.new("Lisa", 10)
    assert_equal("Lisa", lisa.name)
  end

  def test_cohort
    steve = Student.new("Steve", 11)
    assert_equal(11, steve.cohort)
  end

  def test_set_name
    person = Student.new("Alice", 10)
    person.name = "Alison"
    assert_equal("Alison", person.name)
  end

  def test_set_cohort
    person = Student.new("Adam", 11)
    person.cohort = 9
    assert_equal(9, person.cohort)
  end

  def test_student_says
    alice = Student.new("Alice", 10)
    assert_equal("I can talk!", alice.student_says)
  end

  def test_favourite_language
    andrew = Student.new("Andrew", 5)
    assert_equal("I love Ruby", andrew.favourite_language("Ruby"))
  end

end


class TestSportsTeam < MiniTest::Test

  def test_team_name
    red = SportsTeam.new("Red", ["Sam", "Pete"], "Simon Knight", 2)
    assert_equal("Red", red.team_name)
  end

  def test_team_players
    blue = SportsTeam.new("Blue", ["Hannah", "Ian"], "Chris Grey", 3)
    assert_equal(["Hannah", "Ian"], blue.players)
  end

  def test_team_coach
    green = SportsTeam.new("Green", ["Emily"], "Michael Philips", 6)
    assert_equal("Michael Philips", green.coach)
  end

  def test_change_coach
    yellow = SportsTeam.new("Yellow", ["Joe", "Jo"], "Tom Fey", 1)
    yellow.coach = "Steve Smith"
    assert_equal("Steve Smith", yellow.coach)
  end

  def test_add_player
    purple = SportsTeam.new("Purple", ["Craig"], "Tina Mitchell", 5)
    assert_equal(["Craig", "Stuart"], purple.add_new_player("Stuart"))
  end

  def test_player_present
    turquoise = SportsTeam.new("Turquoise", ["Sally", "Robert", "Becky", "Josh"], "Mike Richards", 5)
    assert_equal(true, turquoise.player_present("Josh"))
  end

  def test_win_or_lose
    orange = SportsTeam.new("Orange", ["Tim", "Tom"], "Gavin Whyte", 2)
    assert_equal(3, orange.win_or_lose("win"))
  end

end
