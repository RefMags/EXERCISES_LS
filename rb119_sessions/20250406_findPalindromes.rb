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



# p "hello"[1, 2]  # "el"
# p "hello"[0..2]  # "hel"

p find_palindromes('abba') #== ['a', 'a', 'b', 'b', 'bb', 'abba']
# p find_palindromes('madam') == ['a', 'a', 'd', 'm', 'm', 'ada', 'madam']
# p find_palindromes('hello') == ['e', 'h', 'l', 'l', 'o', 'll']
# # p find_palindromes('') == []
# # p find_palindromes('a') == ['a']
# p find_palindromes('racecar') == ['a', 'a', 'c', 'c', 'e', 'r', 'r', 'aceca', 'cec', 'racecar']
# p find_palindromes('abcdef') == ['a', 'b', 'c', 'd', 'e', 'f']
