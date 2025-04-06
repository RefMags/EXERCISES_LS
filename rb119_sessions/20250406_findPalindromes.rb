# def find_palindromes(str)
# 	palindromes = []

# 	0.upto(str.size - 1) do |start|
# 		(start).upto(str.size - 1) do |end_ind|
# 		palindromes << str[start..end_ind]
# 	end
# end

# 	palindromes.select! { |substr| substr == substr.reverse }
# 	palindromes.sort
# end

p "hello"[1, 2]  # "el"
p "hello"[0..2]  # "hel"
