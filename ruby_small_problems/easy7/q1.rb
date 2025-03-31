# def interleave(arr1, arr2)
#   counter = 0
#   result = []

#   loop do
#     break if counter == arr1.size

#     result << arr1[counter]
#     result << arr2[counter]
#     counter += 1
#   end
#   result
# end
#
#
def interleave(arr1, arr2)
  result = []

  arr1.zip(arr2) do |ele|
    result << ele
  end
  result.flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
