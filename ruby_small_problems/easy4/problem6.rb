# def running_total(arr)
#   sum = 0

#   arr.map {|num| sum += num}
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

def running_total(arr)
  total_runs = []
  sum = 0
  counter = 0

  while counter < arr.size
    sum += arr[counter]
    total_runs << sum
    counter += 1
  end
  total_runs
end

p running_total([2, 5, 13]) #== [2, 7, 20]
