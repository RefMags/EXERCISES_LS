def pairing_target_sums(arr, target_sum)
  result = []

  arr.each do |num|
    (1..arr.size).each do |index|
      if (num + arr[index] == target_sum)
        p [num, arr[index]]
      end
    end
  end
end


pairing_target_sums([1, 2, 3, 2], 4)
# pairing_target_sums([2, 6, 3, 5, 4, 7, 4, 1], 8)
