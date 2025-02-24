arr = [1, 2, 3, 4, 5, 6]
counter = 0

loop do
  break if counter == arr.size
  arr[counter] += 2
  counter += 1
end

p arr
