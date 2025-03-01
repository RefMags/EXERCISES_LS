def select_fruit(hsh)
  fruit_hash = {}
  counter = 0

  loop do
    produce_keys = hsh.keys

    current_produce = produce_keys[counter]
    current_produce_type = hsh[current_produce]

    if current_produce_type == 'Fruit'
      fruit_hash[current_produce] = current_produce
    end
    counter += 1
    break if counter == hsh.size
  end

  fruit_hash
end


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
