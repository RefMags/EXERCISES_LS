=begin
In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string
and you must return that string in an array where an uppercase letter is a person standing up.
Rules
1. The input string will always be lower case but maybe empty.
2. If the character in the string is whitespace then pass over it as if it was an empty seat.

P: Method INPUTS a string , RETURN an array of String
- We repeat the string, but we upcase letter in sequence for each time we repeat the letter,all other letters are downcase,
- All enteries being lowercase,


Ex : " gap " => for 1
               for 2 indx Gap
                for 3 indx gAp
                  for 4 indx gaP

DS: String input, convert to a list of char of string , transform each, string but for that character to be upcased.

ALGO:
- CONVERT the string to an an array of characters
- ITERATE through the characters at each index; map
   -  FOR each char at an index,capitalize the letters that matches the index in string.
   - KEEP all other letters downcase

- ITERATE a number of times of the size of the string,
  - FOR each count, append the string to a new array
  - return the new array

- ITERATE through the. array at the index
  - FOR each word, iterate through the char of the word that correspond to the index,
    - if char is empty space



- RETURN the transformed array

=end

# def wave(str)
#   return [] if str.empty?
#   # arr = str.chars
#   new_arr = []
#   size = 0

#   new_str = ""

#   # Get size without spaces for str
#   if str.include?(" ")
#     size = str.split.join.size
#   else
#     size = str.size
#   end

#   # Getting duplicate without spaces
#   if str.include?(" ")
#     new_word = str.split.join
#   else
#     new_word = str
#   end


#   size.times do |count|
#     new_arr << new_word.dup
#   end

#   # p new_arr
#   new_arr.map.with_index do |word, idx|
#     if str.include?(" ")
#       word[idx] = word[idx].upcase
#       word
#     end
#     # word[idx] = word[idx].upcase
#     # word
#   end

#   # arr.map.with_index do |char, idx|
#   #   if idx
#   #     str[idx] = char.upcase
#   #   else

#   #   end
#   # end
# end

# p word = "two words".split.join(" ")
def wave_for_words_with_space(arr)
  mapped = arr.map.with_index do |word, idx|
    if word[idx] == " "
     0
    else
      word[idx] = word[idx].upcase
      word
    end
  end

  mapped.select { |word| word.is_a?(String) }
end

def wave(str)
  return [] if str.empty?
  # make an array of the string X number of times its size
  size = str.size
  arr = []

  size.times do |count|
    arr << str.dup
  end

  if str.include?(" ")
    wave_for_words_with_space(arr)
  else
    arr.map.with_index do |word, idx|
      word[idx] = word[idx].upcase
      word
    end
  end
end

# def word_with_space(str)
#   word = str.dup

#   str.each_char.with_index do |char, idx|
#     if char == " "
#       word[idx + 1] = word[idx + 1].upcase
#       word
#     end
#   end
#   word
# end


# def wave(str)
#   #   arr.map.with_index do |word, idx|

# #     # Helper for words that contain space

# #     if word.include?(" ")
# #       "This #{word} contains 'empty_space ' "

# #       # Because word contains empty space, we check the current letter, lets make sure we
# #       if word[idx] == " "
# #         word_with_space(word)
# #       else
# #         word[idx] = word[idx]
# #         word
# #         # p "move to the next letter, #{word[idx + 1]} after which current char is '#{word[idx]}' (empty space)"
# #         # word[idx + 1] = word[idx + 1].upcase
# #         # word
# #         # p "we reassigned #{word[idx + 1]} to an upcase therefore #{word}"

# #         # p word
# #         # p "#{must_be_upcase}"
# #       end
# #     else
# #       # if word doesnt include " "; get letter at current index convert it to upcase or downcase and return the word
# #         word[idx] = word[idx].upcase
# #         word
# #     end


# #   end
# end
# p word_with_space("two words")
p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs",
"codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs","two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
