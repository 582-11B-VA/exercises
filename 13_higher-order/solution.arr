use context starter2024
# A function named list-to-upper that transforms a given list of strings into uppercase. See the built-in string-to-upper function.
fun list-to-upper(strings :: List<String>) -> List<String>:
  doc: "Uppercase a list of strings."
  map(string-to-upper, strings)
where:
  list-to-upper([list: "a", "b"]) is [list: "A", "B"]
  list-to-upper([list: "A", "bee"]) is [list: "A", "BEE"]
end

# A function named list-items that transforms a given list of strings into a list of HTML <li> elements.
fun list-items(strings :: List<String>) -> List<String>:
  doc: "Transform strings into HTML <li> elements."
  map(
    lam(s): string-append(string-append("<li>", s), "</li>") end,
    strings)
where:
  list-items([list: "a", "b"]) is [list: "<li>a</li>", "<li>b</li>"]
  list-items([list:]) is [list:]
end

# A function named vowel-count that returns the number of vowels in a given word. Note that if the separator given to string-split-all is an empty string, it explodes the original string into a list of characters.

# Split the word into letters
# Check if each letter is a vowel -> filter
# Count the vowels -> length

fun is-vowel(letter :: String) -> Boolean:
  doc: "Determine if letter is a vowel."
  vowels = [list: "a", "e", "i", "o", "u", "y"]
  member(vowels, letter)
where:
  is-vowel("a") is true
  is-vowel("b") is false
end

fun vowel-count(word :: String) -> Number:
  doc: "Count the vowels in the word."
  letters = string-split-all(word, "")
  vowels = filter(is-vowel, letters)
  length(vowels)
where:
  vowel-count("aaa") is 3
  vowel-count("abc") is 1
  vowel-count("bcd") is 0
end

# A function named is-superset that determines if all elements of a given list are included in a second given list.

# Check if all numbers from the first list are included in the second list

fun is-superset(list-1 :: List, list-2 :: List) -> Boolean:
  doc: "Determine if list-1 is a superset of list-2."
  all(
    lam(element): member(list-2, element) end,
    list-1)
where:
  is-superset([list: 1, 2], [list: 1, 2, 3]) is true # [list: 1, 2]
  is-superset([list: "a"], [list: "b", "c"]) is false # [list: ]
end