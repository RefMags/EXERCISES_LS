def reverse_segments(arr, length)
  substring = []
  substrings = []

  # Iterate to create substring
  arr.each_with_index do |num, index|
    substring << num

    if substring.size == length || index == arr.length - 1
      substrings << substring.dup
      substring.clear
    end
  end

  substrings.map { |sub| sub.reverse }.flatten
end



p reverse_segments([1, 2, 3, 4, 5, 6], 3) # [3, 2, 1, 6, 5, 4]

  puts reverse_segments([1, 2, 3, 4, 5], 2).inspect # [2, 1, 4, 3, 5]

  puts reverse_segments([7, 8, 9], 4).inspect # [7, 8, 9]

  puts reverse_segments([1, 2, 3, 4], 2).inspect # [2, 1, 4, 3]
