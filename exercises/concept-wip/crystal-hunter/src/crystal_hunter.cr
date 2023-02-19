class Rules
  def eat_ghost?(power_pellet_active, touching_ghost)
    raise "Please implement the Rules#eat_ghost? method"
  end

  def score?(touching_power_pellet, touching_dot)
    raise "Please implement the Rules#score? method"
  end

  def lose?(power_pellet_active, touching_ghost)
    raise "Please implement the Rules#lose? method"
  end

  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost)
    raise "Please implement the Rules#win? method"
  end
end
