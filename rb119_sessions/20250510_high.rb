# def alphas(hsh, target)
# 	hsh.find {|k, v| k == target }[1]
# end


def high(str)
	alphabets = [0] + ("a".."z").to_a
	arr = str.split


  words_score = arr.each_with_object({}) do |word, hash|
      word_score = 0
      word.each_char do |char|
        index = alphabets.index(char)
        word_score += index
      end
      # p "the current word : #{word} ; word score is #{word_score} "

      hash[word] = word_score
    end

  p words_score.find {|k, v| v == words_score.values.max }[0]

end

# alphabets = ("a".."z").to_a.tally

# alphas(alphabets, "b")
p high('man i need a taxi up to ubud') == 'taxi'

p high('what time are we climbing up the volcano') == 'volcano'

p high('take me to semynak') == 'semynak'

high('aaa b') #== 'aaa'
