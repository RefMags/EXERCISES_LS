def interleave(arr1, arr2)
  counter = 0
  result = []

  loop do
    break if counter == arr1.size

    result << arr1[counter]

    result << arr2[counter]

    counter += 1
  end

  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
