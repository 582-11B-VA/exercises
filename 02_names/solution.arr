use context starter2024

width = 50
height = width * 0.75

stripe-height = height / 3

red-stripe = rectangle(width, stripe-height, "solid", "red")
white-stripe = rectangle(width, stripe-height, "solid", "white")
blue-stripe = rectangle(width, stripe-height, "solid", "blue")
orange-stripe = rectangle(width, stripe-height, "solid", "orange")
orange-circle = circle(stripe-height / 3, "solid", "orange")
green-stripe = rectangle(width, stripe-height, "solid", "green")

armenia-flag =
  above(
    above(red-stripe, blue-stripe),
    orange-stripe)

austria-flag =
  above(
    above(red-stripe, white-stripe),
    red-stripe)

colombia-flag =
  above(
    above(
      rectangle(width, height / 2, "solid", "yellow"),
      rectangle(width, height / 4, "solid", "blue")),
    rectangle(width, height / 4, "solid", "red"))

niger-flag =
  above(
    above(
      orange-stripe,
      overlay(orange-circle, white-stripe)),
    green-stripe)