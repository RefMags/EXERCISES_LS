# def title_case(str, minor_words=" ")
#   to_be_title_cased = str.downcase.split
#   minor_words = minor_words.downcase.split

#   title_cased = to_be_title_cased.map.with_index do |word, idx|
#     if minor_words.include?(word) && idx == 0
#       word.capitalize
#     elsif !minor_words.include?(word)
#       word.capitalize
#     elsif minor_words.include?(word)
#       word
#     end
#   end

#   title_cased.join(' ')
# end

def title_case(str, minor_words=" ")
  words = str.downcase.split
  minors = minor_words.downcase.split

  words.map.with_index { | word, idx|
    minors.include?(word) && idx != 0 ? word : word.capitalize }.join(" ")
end


p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'
