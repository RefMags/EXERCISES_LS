=begin
Write a method that takes a string, and then returns a hash that
contains 3 entries: one represents the number of characters in
the string that are lowercase letters, one represents the number of
characters that are uppercase letters, and one represents the number of
characters that are neither


Examples:
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# P & E: Should take in String input and return Hash
#       - Hash should contain 3 enteries of 3 key/value pairs
#         - (Could there be another situation in which there could be more than 3)
#       - the key/value pairs should:
#         - have a key that state the property of the letter: lowercase, uppercase
#         - the value should state the count of the letters of a certain property
#       - (What happens if we have an empty string?)
#         - these property is not included into the hash's key-value properties
#         - letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
#
# DS:
#   - We get string as input, which we convert to an array of characters.
#   # (changed my logic) We initialize the value count variable based on each element property.
#     (changed my logic) We initialize an empty hash to store the key/value pair
#   - We initalize an hash with an initial key/value pair of all desired key/value pairs reset to 0
#   - We process each element by checking whether it is an alphabet thats either
#   lower case,uppercase or neither and increment their counts.
#   - We dont consider forming any key/value for an empty array
#   - We return the new hash
#
#ALGO:
# - INITIALIZE all variables(implementation => just say it outloud)
#   - new_hash = {lowercase: 0, uppercase: 0, neither: 0}
#   - lowcase_alphabets = ("a".."z").to_a
#   - upcase_alphabets = ("A".."Z").to_a
# - CONVERT the string to an array of chars
#  - string.chars
# - ITERATE over the array
#   - IF the element is included in array of lower case alphabets
#     - Increment the value of the lowercase in hash
#   - IF the element is included in array of upper case alphabets
#     - Increment the value of the lowercase in hash
#   - IF element is not included in either of the alphabetic arrays
#     - Increment the neither value in the hash
#   - ELSE if the array is empty
#       - return the hash with all properties of their initial values(no counts)
# - RETURN the hash with the letter case count key/value pairs
=end

def letter_case_count(str)
  arr = str.chars
  new_hash = {lowercase: 0, uppercase: 0, neither: 0}
  lowcase_alphabets = ("a".."z").to_a
  upcase_alphabets = ("A".."Z").to_a

  arr.each do |letter|
    if lowcase_alphabets.include?(letter)
      new_hash[:lowercase] += 1
    elsif upcase_alphabets.include?(letter)
      new_hash[:uppercase] += 1
    else
      new_hash[:neither] += 1
    end
  end
  new_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
