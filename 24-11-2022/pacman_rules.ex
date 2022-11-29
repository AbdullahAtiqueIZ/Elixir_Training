defmodule Rules do
  def eat_ghost?(power_pellet_active, touching_ghost) do
    # Please implement the eat_ghost?/2 function
    power_pellet_active and touching_ghost
  end

  def score?(touching_power_pellet, touching_dot) do
    # Please implement the score?/2 function
    touching_power_pellet or touching_dot
  end

  def lose?(power_pellet_active, touching_ghost) do
    # Please implement the lose?/2 function
    cond do
      power_pellet_active and touching_ghost -> false
      power_pellet_active and !touching_ghost -> false
      !power_pellet_active and touching_ghost -> true
      !power_pellet_active and !touching_ghost -> false
    end
  end

  def win?(has_eaten_all_dots, power_pellet_active, touching_ghost) do
    # Please implement the win?/3 function
    has_eaten_all_dots and !lose?(power_pellet_active, touching_ghost)
  end
end

IO.puts Rules.win?(true, true, true)
