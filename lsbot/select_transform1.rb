def three_vowel_strings(arr)
  vowels = "aeiou"
  three_vowel_string = arr.select do |ele|
    ele.count(vowels) == 3
  end

  three_vowel_string.map {|ele| ele.reverse}
end

p three_vowel_strings(["bear", "crossroads", "fountain"])
