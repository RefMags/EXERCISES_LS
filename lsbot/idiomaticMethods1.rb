def reverse_string(arr)
  reversed_strings = []

  arr.map do |str|
    if str.count('aeiou') == 3
      reversed_strings << str.reverse
    end
  end

  reversed_strings
end

p reverse_string(["black", "blackout", "cookout"]) == ["tuokcalb"]
