def capitalize(arr)
	counter = 0
	result = []

	loop do
		current_string = arr[counter].capitalize
		result << current_string
		counter += 1
		break if counter == arr.size
  end
	result
	# Arr.map {|str| str.capitalize}
end

p capitalize(['purple', 'orange']) == ['Purple', 'Orange']
