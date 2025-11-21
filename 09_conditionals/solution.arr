use context starter2024
fun resell_value(og-price :: Number, age :: Number) -> Number:
  doc: "Return the resell value of a given vehicule."
  ratio = if age < 3:
    0.80
  else if (age >= 3) and (age <= 10):
    0.70
  else:
    0.50
  end
  og-price * ratio
where:
  resell_value(100, 2) is 80
  resell_value(100, 3) is 70
  resell_value(100, 4) is 70
  resell_value(100, 9) is 70
  resell_value(100, 10) is 70
  resell_value(100, 11) is 50
end 