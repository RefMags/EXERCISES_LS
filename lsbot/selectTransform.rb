# def squared_sum(arr)
# 	counter = 0
# 	sum = 0

# 	loop do
# 		break if counter == arr.size
# 		current_integer = arr[counter]

# 		if current_integer.odd?
# 			squared_odd = current_integer ** 2
# 			sum += squared_odd
# 		end
# 		counter += 1
# 	end
# 	sum
# end

def squared_sum(arr)
  squared_odd = []

  arr.each do |int|
    squared_odd << int ** 2 if int.odd?
  end
  squared_odd.sum
end


numbers = [3, 5, 4, 7, 10]
p squared_sum(numbers) == 83
