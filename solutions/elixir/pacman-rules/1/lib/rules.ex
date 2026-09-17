defmodule Rules do
  def eat_ghost?(power_pellet_active?, touching_ghost?) do
    result = power_pellet_active? and touching_ghost?
    result
  end

  def score?(touching_power_pellet?, touching_dot?) do
    result = touching_power_pellet? or
    touching_dot?
    result
  end

  def lose?(power_pellet_active?, touching_ghost?) do
    touching_ghost? and not power_pellet_active?
    
     
  end

  def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?) do
    already_loses? = lose?(power_pellet_active? , touching_ghost?)

    has_eaten_all_dots? and not already_loses?
  end
end
