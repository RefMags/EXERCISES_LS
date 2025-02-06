def word_sizes(str_word)
  words = str_word.split
  hash = {}

  words.each do |word|
    size = word.length
    if hash.key(size)
      hash[size] += 1
    else
      hash[size] = 1
    end
  end

  hash.sort_by(&:first).to_h
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}
