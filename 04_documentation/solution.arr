use context starter2024
fun moon-weight(earth-weight :: Number) -> Number:
  doc: "Return the given Earth weight on the Moon."
  earth-weight / 6
end

fun greet(name :: String) -> String:
  doc: "Return a greeting with the given name."
  string-append(string-append("Hi ", name), "!")
end

fun order-total(qty :: Number, msg :: String) -> Number:
  doc: "Compute the order total for the given quantity and message."
  unit-cost = 25
  qty * (unit-cost + msg-cost(msg))
end

fun msg-cost(msg :: String) -> Number:
  doc: "Compute the cost of the given message."
  char-cost = 2
  char-cost * string-length(msg)
end
