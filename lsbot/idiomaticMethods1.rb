def reverse_string(arr)
  arr.select {|str| str.downcase.count('aeiou') == 3}.map(&:reverse)
end

p reverse_string(["black", "blackout", "cookout"]) == ["tuokcalb"]
