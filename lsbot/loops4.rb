def string_to_hash(str)
  new_hash = {}

  str.each_char do |char|
    if !new_hash.include?(char)
      new_hash[char] = 1
    else
      new_hash[char] += 1
    end
  end

  new_hash.delete(" ")
  new_hash
end

puts string_to_hash("beer") == { "b" => 1, "e" => 2, "r" => 1 }
puts string_to_hash("walking miles") == {"w" => 1, "a" => 1, "l" => 2, "k" => 1, "i" => 2, "n" => 1, "g" => 1, "m" => 1, "e" => 1, "s" => 1}
