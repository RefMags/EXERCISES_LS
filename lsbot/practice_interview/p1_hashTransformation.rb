def sum_array(infor)
  infor.map do |_, value|
    value.sum
  end
end


def transform_values(infor)
  return {} if infor.empty?
  summed_values = sum_array(infor)
  string_keys = infor.keys
  counter = 0
  new_hash = {}

  loop do
    break if counter == string_keys.size

    current_str = string_keys[counter]
    current_sum = summed_values[counter]

    new_hash[current_str] = current_sum

    counter += 1
  end
  new_hash
end

data = {
 'a' => [1, 2, 3],
 'b' => [4, 5, 6],
 'c' => [7, 8, 9, 10]
}

# sum_array(data)

p transform_values({
 'a' => [1, 2, 3],
 'b' => [4, 5, 6],
 'c' => [7, 8, 9, 10]
}) == {'a' => 6, 'b' => 15, 'c' => 34}

# data = {}
p transform_values({}) == {}

# data = {'x' => []}
p transform_values({'x' => []}) == {'x' => 0}
