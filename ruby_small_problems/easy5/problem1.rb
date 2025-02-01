def ascii_value(str)
  total = 0

  str.chars do |char|
    ascii_value = char.ord
    total += ascii_value
  end
  p total
end

p ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0
