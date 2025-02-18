ALPHABET = ("a".."b").to_a

def word_sizes(str_word)
  words = str_word.split
  hash = {}

  words.each do |word|
    alphabetic_word = ''
    word.chars.each do |char|
      puts true if ALPHABET.include?(char.downcase)
      #   alphabetic_word << char
      # end
    end


    size = alphabetic_word.length
    if hash.key?(size)
      hash[size] += 1
    else
      hash[size] = 1
    end
  end

  hash.sort_by(&:first).to_h
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
