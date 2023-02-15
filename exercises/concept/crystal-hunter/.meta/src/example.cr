class Rules
  def self.eat_ghost?(power_pellet_active, touching_ghost)
    power_pellet_active && touching_ghost
  end

  def self.score?(touching_power_pellet, touching_dot)
    touching_power_pellet || touching_dot
  end

  def self.lose?(power_pellet_active, touching_ghost)
    !power_pellet_active && touching_ghost
  end

  def self.win?(has_eaten_all_dots, power_pellet_active, touching_ghost)
    has_eaten_all_dots && !lose?(power_pellet_active, touching_ghost)
  end
end
