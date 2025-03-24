def mysterious_method(array)
  array.each_with_index do |element, index|
    return element if element.length > 5
    array[index] = element.upcase
  end

  p array
end

words = ["apple", "banana", "car", "elephant"]
result = mysterious_method(words)
puts result
puts words
