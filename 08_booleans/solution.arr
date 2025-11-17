use context starter2024
fun can-free-amiel(
    is-dog-attacking :: Boolean,
    is-archer-awake :: Boolean,
    is-knight-awake :: Boolean,
    is-Amiel-awake :: Boolean) -> Boolean:
  doc: "Determine if Annalyn can free Amiel."
  case-1 = 
    is-dog-attacking and not(is-archer-awake)
  case-2 = 
    not(is-dog-attacking) and is-Amiel-awake and not(is-archer-awake) and not(is-knight-awake)
  case-1 or case-2
where:
  can-free-amiel(true, false, false, false) is true
  can-free-amiel(true, true, false, false) is false
  can-free-amiel(false, false, false, true) is true
  can-free-amiel(false, true, false, true) is false
end