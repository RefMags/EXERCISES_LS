# selected = [1, 2, 3].select do |num|
#   num > 5
#   'hi'
# end

# p selected

# str_size = ['ant', 'bat', 'caterpillar'].count do |str|
#   str.length < 4
# end

# p str_size

# rejected = [1, 2, 3].reject do |num|
#   puts num
# end

# p rejected

# Q4.
hash = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

p hash

# Q10.
# mapped = [1, 2, 3].map do |num|
#   if num > 1
#     puts num
#   else
#     num
#   end
# end

# p mapped
