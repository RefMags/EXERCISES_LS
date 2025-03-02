def replace_values(arr)
  total = 0

   values = arr.each do |ele|
    (0...arr.size).select do |idx|
      p arr[idx] < ele
    end
  end
  p values
end

replace_values([4, 6, 20, 15])
