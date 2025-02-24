def sum_of_values(arr)
  sum = 0
  counter = 0

  loop do
    current_subarr = arr[counter]
    inner_counter = 0

    loop do
      current_element = current_subarr[inner_counter]
      sum += current_element
      inner_counter += 1
      break if inner_counter == current_subarr.size
    end

    counter += 1
    break if counter == arr.size
  end
  sum
end

p sum_of_values([[2, 4], [3, 6]]) == 15
