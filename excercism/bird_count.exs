defmodule BirdCount do
  def today([today | _]), do: today

  def today([]), do: nil

  def increment_day_count([]), do: [1]

  def increment_day_count([today | rest_of_days]), do: [today + 1 | rest_of_days]

  def has_day_without_birds?([today | rest_of_days ]), do: today == 0 or has_day_without_birds?(rest_of_days)

  def has_day_without_birds?([]), do: false

  def total([today | rest_of_days]), do: today + total(rest_of_days)

  def total([]), do: 0

  def busy_days([]), do: 0

  def busy_days([today | rest_of_days]) when today > 4, do: 1 + busy_days(rest_of_days)

  def busy_days([_ | rest_of_days]), do: busy_days(rest_of_days)
end
