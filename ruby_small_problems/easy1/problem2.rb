# def is_odd?(number)
#   number % 2 == 1
# end


def is_odd?(a_number)
  a_number.remainder(2) != 0
end

def is_odd?(a_number)
  a_number.remainder(2).abs == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
