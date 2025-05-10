def all_vowels?(str)
  vowels = %w(a e i o u)
  str.chars.all? { |char| vowels.include?(char) }
end

def longest_vowel_substring(str)
  substrings = []

  (0..str.size - 1).each do |idx1|
    (idx1...str.size).each do |idx2|
      substr = str[idx1..idx2]
      substrings << substr if all_vowels?(substr)
    end
  end

  return 0 if substrings.empty?
  substrings.max_by { |substr| substr.size }.size
end

p longest_vowel_substring('cwm') == 0
p longest_vowel_substring('many') == 1
p longest_vowel_substring('launchschoolstudents') == 2
p longest_vowel_substring('eau') == 3
p longest_vowel_substring('beauteous') == 3
p longest_vowel_substring('sequoia') == 4
p longest_vowel_substring('miaoued') == 5
