use context starter2024
fun is-critical(temp :: Number, neutrons :: Number) -> Boolean:
  doc: "Determine whether a reactor is critical or not."
  (temp < 800) and (neutrons > 500) and ((temp * neutrons) < 500000)
where:
  is-critical(801, 0) is false
  is-critical(700, 600) is true
  is-critical(7000, 501) is false
end

fun efficiency-band(voltage :: Number, current :: Number, max-power :: Number) -> String:
  doc: "Determine in which efficiency band a reactor is."
  power = voltage * current
  efficiency = (power / max-power) * 100
  
  if efficiency >= 80:
    "green"
  else if (efficiency < 80) and (efficiency >= 60):
    "orange"
  else if (efficiency < 60) and (efficiency >= 30):
    "red"
  else if efficiency < 30:
    "black"
  end
where:
  efficiency-band(1, 1, 1) is "green"
  efficiency-band(1, 0.7, 1) is "orange"
  efficiency-band(1, 0.5, 1) is "red"
  efficiency-band(1, 0.2, 1) is "black"
end

fun status-code(temp :: Number, neutrons :: Number, threshold :: Number) -> String:
  doc: "Determines if a reactor is below, at, or above its ideal criticality threshold."
  product = temp * neutrons
  if product < (0.9 * threshold):
    "LOW"
  else if (product >= (0.9 * threshold)) and (product <= (1.1 * threshold)):
    "NORMAL"
  else:
    "DANGER"
  end
where:
  status-code(8, 10, 100) is "LOW"
  status-code(9, 10, 100) is "NORMAL"
  status-code(10, 10, 100) is "NORMAL"
  status-code(11, 10, 100) is "NORMAL"
  status-code(12, 10, 100) is "DANGER"
end