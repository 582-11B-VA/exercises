use context starter2024
fun has-special-char(password :: String) -> Boolean:
  doc: "Determine if the password includes '!' or '?'."
  string-contains(password, "!") or string-contains(password, "?")
where:
  has-special-char("") is false
  has-special-char("!") is true
  has-special-char("?") is true
end

fun validate-password(password :: String) -> String:
  doc: "Validate a given password. Return an error message or an empty string if valid."
  min-length = 8
  is-long-enough = string-length(password) >= min-length
  
  if not(is-long-enough):
    "Must have at least 8 chararcters"
  else if not(has-special-char(password)):
    "Must include '!' or '?'"
  else:
    ""
  end
  
where:
  validate-password("") is "Must have at least 8 chararcters"
  validate-password("!") is "Must have at least 8 chararcters"
  validate-password("123456789") is "Must include '!' or '?'"
  validate-password("12345678") is "Must include '!' or '?'"
  validate-password("1234567!") is ""
end

