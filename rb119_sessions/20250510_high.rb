def alphas(arr, target)
  alphabet_hash = ('a'..'z').each_with_object({}).with_index(1) { |(letter, hash), index| hash[letter] = index }
  alphabet_hash.find {|k, v| k == target }[1]
end


def high(str)
	# alphabets = [0] + ("a".."z").to_a
	arr = str.split


  words_score = arr.each_with_object({}) do |word, hash|
      # word_score = 0
      # word.each_char do |char|
      #   index = alphabets.index(char)
      #   word_score += index
      # end
      word_score = word.chars.sum {|char| alphas(arr, char)}
      hash[word] = word_score
    end

  # maximum = words_score.values.max
  # words_score.find {|k, v| v == maximum }[0]

  words_score.max_by {|_ , score| score }[0]

end

# alphabets = ("a".."z")

# alphas(alphabets, "b")
p high('man i need a taxi up to ubud') == 'taxi'

p high('what time are we climbing up the volcano') == 'volcano'

p high('take me to semynak') == 'semynak'

high('aaa b') #== 'aaa'
