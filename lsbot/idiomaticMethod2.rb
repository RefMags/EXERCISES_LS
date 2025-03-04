def replace_with_sum_of_less_values(arr)
  arr.map do |current_integer|
    other_elements = arr.select {|other_element| other_element < current_integer }
    other_elements.empty? ? current_integer : other_elements.sum
  end

end

p replace_with_sum_of_less_values([6, 2, 4, 8]) == [6, 2, 2, 12]
