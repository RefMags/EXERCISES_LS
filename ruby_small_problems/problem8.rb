def reversed_number(number)
  string_num = number.to_s
  # string_num.reverse.to_i

  reversed_num = ''

  # string_num.each_char do |num|
  #   reversed_num.prepend(num)
  # end

  (string_num.length - 1).downto(0) do |i|
    reversed_num += string_num[i]
  end
  reversed_num.to_i
end

puts reversed_number(12345) #== 54321
# reversed_number(12213) == 31221
# reversed_number(456) == 654
# reversed_number(12000) == 21 # No leading zeros in return value!
# reversed_number(12003) == 30021
# reversed_number(1) == 1
