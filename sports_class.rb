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

  def add_points(result)
    @points += 1 if result == "win"
  end
  
end
