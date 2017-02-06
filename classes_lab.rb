class Student
  attr_accessor :name, :cohort
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_says()
    return "I can talk!"
  end

  def favourite_language(language)
    return "I love #{language}"
  end

end

class SportsTeam
  attr_accessor :team_name, :players, :coach, :points
  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def add_new_player(new_player)
    @players << new_player
    return @players
  end

  def player_present(name)
    return players.include?(name)
  end

  def win_or_lose(result)
    if result == "win"
      @points += 1
    end
  end

end
