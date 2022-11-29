defmodule Lasagna do
  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven do
    40
  end
  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(time_spent_in_oven) do
    expected_minutes_in_oven - time_spent_in_oven
  end
  # Please define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(number_of_layers) do
    # by assuming one layer takes two minutes
    number_of_layers * 2
  end
  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(layers, time_in_oven) do
    preparation_time_in_minutes(layers) + time_in_oven
  end
  # Please define the 'alarm/0' function
  def alarm() do
    "Ding!"
  end
end
IO.puts Lasagna.total_time_in_minutes(4, 8)
