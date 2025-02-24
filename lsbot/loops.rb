# def running_totals(arr)
#   sum = 0

#   arr.map {|number| sum += number }
# end

def running_totals(arr)
  run_totals = []
  counter = 0
  sum = 0

  loop do
    run_totals << sum += arr[counter]
    counter += 1
    break if counter == arr.size
  end

  run_totals
end

integer_arr = [2, 4, 6, 8]
p running_totals(integer_arr) #== [2, 6, 12, 20]
