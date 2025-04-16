def closest_numbers(digits)
 pairs = []


 digits.each_with_index do |digit, idx|
   (idx + 1..digits.size - 1).each do |idx2|
     pairs << [digit, digits[idx2]]
   end
 end

 pair_difference = pairs.map {|pair| pair.max - pair.min }

 min = pair_difference.min

 pairs.find {|pair| (pair.max - pair.min) == min }

end


p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 22, 7, 17]) == [12, 7]
