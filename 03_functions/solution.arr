use context starter2024
width = 50
height = width * 0.75


stripe-height = height / 3

orange-circle = circle(stripe-height / 3, "solid", "orange")

fun stripe(color):
  rectangle(width, stripe-height, "solid", color)
end

fun above-3(top, middle, bottom):
  above(
    above(top, middle),
    bottom)
end

fun add-pole(flag):
  pole-color = "brown"
  pole = rectangle(width / 40, height * 2, "solid", pole-color)
  beside-align("top", pole, flag)
end

armenia-flag =
  above-3(stripe("red"), stripe("blue"), stripe("orange"))

austria-flag =
  above-3(stripe("red"), stripe("white"), stripe("red"))

colombia-flag =
  above-3(
    rectangle(width, height / 2, "solid", "yellow"),
    rectangle(width, height / 4, "solid", "blue"),
    rectangle(width, height / 4, "solid", "red"))

niger-flag =
  above-3(
    stripe("orange"),
    overlay(orange-circle, stripe("white")),
    stripe("green"))

add-pole(niger-flag)
add-pole(austria-flag)
