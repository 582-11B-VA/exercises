# Exercise : Conditionals

For this assignment, your task is to develop a control system for
nuclear reactors.

## Criticality

First, you must implement a function named `is-critical` that determines
whether a reactor is critical or not given its temperature and the
number of neutrons it emits per second. A reactor is critical if it
satisfies the following conditions:

- Its temperature is less than 800 Kelvin.
- The number of neutrons it emits per second is greater than 500.
- The product of its temperature and neutrons emitted per second is less
  than 500,000.

## Efficiency

Then, you must implement a second function named `efficiency-band` that
determines how efficient a reactor is given its voltage, current and
maximum power. The efficiency of a nuclear reactor can be grouped into
four bands:

- `"green"`: efficiency of 80% or more.
- `"orange"`: efficiency of less than 80% but at least 60%.
- `"red"`: efficiency below 60%, but still 30% or more.
- `"black"`: less than 30% efficient.

The efficiency percentage of a reactor is calculated by dividing the
power it produces by its maximum power, and multiplying the result
by 100. The power it produces is the product of its voltage and current.

## Status

Finally, you must implement a function named `status-code` that
determines if a reactor is below, at, or above its ideal criticality
threshold. When called, your function will receive the reactor's
temperature, the number of neutrons it emits per second, and its ideal
criticality threshold.

- If the product of the temperature and neutrons per second is lower
  than 90% of the threshold, your function should return `"LOW"`.
- If the product is within 10% of the threshold, your function should
  return `"NORMAL"`.
- If the product is not in the above-stated ranges, your function should
  return `"DANGER"`.
