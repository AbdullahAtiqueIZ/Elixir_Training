defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
    discount_price = (before_discount/ 100 ) * discount
    price_after_discount = before_discount - discount_price
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    discounted_hourly_rate = apply_discount(hourly_rate, discount)
    ceil(daily_rate(discounted_hourly_rate) * 22)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    daily_rate = daily_rate(hourly_rate)
    cond do
      discount != 0.0 ->
        discounted_daily_rate = daily_rate(apply_discount(hourly_rate, discount))
        Float.floor(budget / ceil(discounted_daily_rate), 1)
      discount == 0.0 ->
        Float.floor(budget / ceil(daily_rate), 1)
    end
  end
end

IO.puts FreelancerRates.monthly_rate(62.8, 0.0)
IO.puts FreelancerRates.days_in_budget(480, 60, 20)
