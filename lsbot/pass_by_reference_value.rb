# def modify_string(str)
#   str << " World"
#   str = "Hello Universe"
# end

# greeting = "Hello"
# modify_string(greeting)
# puts greeting


# def double_elements(arr)
#   arr.map! do |element|
#     element *= 2
#   end
# end
# numbers = [1, 2, 3, 4, 5]
# double_elements(numbers)
# p numbers

def immutable_obj(number)
  number.times do |count|
    count
  end
end

int = 2
immutable_obj(int)
p int
