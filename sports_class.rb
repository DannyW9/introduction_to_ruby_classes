class Sports

  attr_accessor :team_name, :players_list, :coach_name, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players_list = players
    @coach_name = coach
    @points = points
  end

  def add_new_player(new_player)
    @players_list.push(new_player)
  end

  def check_for_player(player_check)
    for players in @players_list
      if players == player_check
        return true
      end
    end
  end

  # Could refactor
  # return @players_list.include?(player_check)
  # evaluates and returns true or false

  def add_points(result)
    @points += 1 if result == "win"
  end

end

# 0 points would be default for every team created
# Instead of passing 0 into the test setup
# Create @points = 0 in the initialize. Do not pass points into the ()
