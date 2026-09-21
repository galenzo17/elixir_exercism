defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    8 * hourly_rate/1
  end

  def apply_discount(before_discount, discount) do
    before_discount - before_discount * discount / 100
  end

  def monthly_rate(hourly_rate, discount) do
    neto = apply_discount(daily_rate(hourly_rate), discount)
    ceil(22 * neto)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily = apply_discount(daily_rate(hourly_rate), discount)
    
    Float.floor(budget / daily, 1)
  end
end
