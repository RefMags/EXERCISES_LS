def stringy(number)
  result_str = ''

  number.times do |count|
    current_count = count.even? ? '1' : '0'
    result_str.concat(current_count)
  end

  result_str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
