def running_total(arr)
  total = 0

  running_total = arr.map do |n|
    total += n
  end

  running_total

end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
