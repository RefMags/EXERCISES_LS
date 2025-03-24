arr = [1, 2, 3, 4, 5]

selected = arr.select do |num|
  puts num if num.odd?
end

p selected
