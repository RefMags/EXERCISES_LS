def multiply(arr, value)
  multiplied_values = []
  counter = 0

  loop do
    current_value = arr[counter]

    result = current_value * value
    multiplied_values << result
    counter += 1
    break if counter == arr.size
  end
  multiplied_values
end

my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
