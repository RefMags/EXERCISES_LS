def pairing_target_sums(arr, target_sum)
  result = []

  arr.each_with_index do |num, idx1|
    (idx1 + 1...arr.size).each do |idx2|
      result << ([num,arr[idx2]]).sort if (num + arr[idx2]) == target_sum
    end
  end
  p result.sort
end


p pairing_target_sums([1, 2, 3, 2], 4) == [[1, 3], [2, 2]]
p pairing_target_sums([2, 6, 3, 5, 4, 7, 4, 1], 8) == [[1,7], [2, 6], [3, 5], [4,4]]
