def ascii_value(str)
  total = 0
  str.chars {|char| total += char.ord}
  total
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
