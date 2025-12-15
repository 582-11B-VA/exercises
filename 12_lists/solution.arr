use context starter2024

fun surround(num :: Number) -> List<Number>:
  doc: "Return a list containing the number before it, the number itself, and the number after it."
  [list: num - 1, num, num + 1]
where:
  surround(1) is [list: 0, 1, 2]
  surround(3) is [list: 2, 3, 4]
  surround(5) is [list: 4, 5, 6]
end

fun nums-are-same(nums :: List<Number>) -> Boolean:
  doc: "Determine if all nums are the same."
  num-1 = get(nums, 0)
  num-2 = get(nums, 1)
  num-3 = get(nums, 2)
  (num-1 == num-2) and (num-2 == num-3)
where:
  nums-are-same([list: 1, 2, 3]) is false
  nums-are-same([list: 1, 1, 1]) is true
end

fun word-count(sentence :: String) -> Number:
  doc: "Return the number of words in the sentence."
  words = string-split-all(sentence, " ")
  length(words)
where:
  word-count("hello world") is 2
  word-count("bonjour le monde") is 3
  word-count("a b c") is 3
end