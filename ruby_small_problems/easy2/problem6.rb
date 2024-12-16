# numbers = (1..99)

# numbers.each do |number|
#   puts number if number.odd?
# end

# value = 1
# while value <= 99
#   puts value
#   value += 2
# end

1.upto(99) { |num| puts num if num.odd? }


puts (1..99).select(&:odd?)
