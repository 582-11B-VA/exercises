use context starter2024
# Clients often contact our freelancer to enquire about their day rate. But the freelancer only knows their hourly rate. Create a day_rate function that estimates their day rate given an hourly rate. The freelancer works 8 hours per day.

fun day-rate(hourly-rate :: Number) -> Number:
  doc: "Estimates day rate given an hourly rate."
  hours-per-day = 8
  hourly-rate * hours-per-day
where:
  day-rate(1) is 1 * 8
  day-rate(100) is 100 * 8
end

# Project managers sometimes contact our freelancer to work on projects with a fixed budget. Create a days_in_budget function that calculates the number of days they would work until the budget is exhausted. When called, the function receives the fixed budget and the freelancer's hourly rate. The result must be rounded down to the nearest whole number.

fun days-in-budget(
    budget :: Number, 
    hourly-rate :: Number) -> Number:
  doc: "Calculate days until budget is exhausted."
  num-floor(budget / day-rate(hourly-rate))
where:
  days-in-budget(80, 1) is 10
  days-in-budget(100, 1) is 12
end

# When clients hire our freelancer for projects spanning over multiple months, they get a discount for every full month. The remaining days are billed at day rate. Given that every month has 22 billable days, create a price-with-discount function that estimates the cost for such projects. When called, the function receives the hourly rate, the number of billable days the project contains, and a monthly discount rate. The result must be rounded up to the nearest whole number.

fun price-with-discount(
    hourly-rate :: Number, 
    billable-days :: Number, 
    discount-rate :: Number) -> Number:
  doc: "Estimate cost with discount for project."
  discountable-days = calc-discountable-days(billable-days)
  rem-days = billable-days - discountable-days
  discountable-total = day-rate(hourly-rate) * discountable-days
  undiscountable-total = day-rate(hourly-rate) * rem-days
  
  total = 
    (discountable-total * ((100 - discount-rate) / 100)) + undiscountable-total
  
  num-ceiling(total)
where:
  price-with-discount(1, 22, 50) is 88
  price-with-discount(1, 23, 50) is 96
end


fun calc-discountable-days(billable-days :: Number) -> Number:
  doc: "Compute discountable days in given billable days."
  days-in-month = 22
  full-months = num-floor(billable-days / days-in-month)
  full-month * days-in-month
where:
  calc-discountable-days(1) is 0
  calc-discountable-days(22) is 22
  calc-discountable-days(23) is 22
  calc-discountable-days(100) is 88
end