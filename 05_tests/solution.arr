use context starter2024
fun moon-weight(earth-weight :: Number) -> Number:
  doc: "Return the given Earth weight on the Moon."
  earth-weight / 6
where:
  moon-weight(100) is 100 / 6
  moon-weight(10) is 10 / 6
end

fun greet(name :: String) -> String:
  doc: "Return a greeting with the given name."
  string-append(string-append("Hi ", name), "!")
where:
  greet("Bob") is "Hi Bob!"
  greet("Ann") is "Hi Ann!"
end

fun order-total(qty :: Number, msg :: String) -> Number:
  doc: "Compute the order total for the given quantity and message."
  unit-cost = 25
  qty * (unit-cost + msg-cost(msg))
where:
  order-total(1, "a") is 1 * (25 + msg-cost("a"))
  order-total(2, "ab") is 58
end

fun msg-cost(msg :: String) -> Number:
  doc: "Compute the cost of the given message."
  char-cost = 2
  char-cost * string-length(msg)
where:
  msg-cost("a") is 2
  msg-cost("ab") is 4
end

fun calc-total(subtotal :: Number) -> Number:
  doc: "Apply taxes to the given subtotal."
  subtotal + (0.05 * subtotal) + (0.09975 * subtotal)
where:
  calc-total(10) is 10 + (0.05 * 10) + (0.09975 * 10)
  calc-total(100) is 100 + (0.05 * 100) + (0.09975 * 100)
end

fun question(sentence :: String) -> String:
  doc: "Turn a given sentence into a question."
  period-index = string-length(sentence) - 1
  string-append(string-substring(sentence, 0, period-index), "?")
where:
  question("hi.") is "hi?"
  question("J.D. Salinger is an author.") is "J.D. Salinger is an author?"
end
