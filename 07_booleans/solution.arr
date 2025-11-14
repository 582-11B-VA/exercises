use context starter2024
fun can-drive(
    score :: Number,
    age :: Number,
    has-license :: Boolean,
    has-permit :: Boolean) -> Boolean:
  doc: "Determine if the person can drive."
  # conditions
  is-old-enough = age >= 16
  has-minimum-score = score > 6/15
  has-document = has-license or has-permit
  
  #result
  is-old-enough and has-minimum-score and has-document
where:
  can-drive(5/15, 20, true, false) is false
  can-drive(10/15, 20, true, false) is true
end