def groupAnagrams(words)
  anagrams = Hash.new {|h, k| h[k] = []}

  words.each do |word|
    anagrams[word.chars.sort.join] << word
  end

  result = []
  non_anagrams = []
  anagrams.values.each do |word_list|
    if word_list.size > 1
      result << word_list
    else
     non_anagrams.concat(word_list)
    end
  end

  result << non_anagrams if !non_anagrams.empty?
  result
end

p groupAnagrams(['listen', 'silent', 'enlist', 'hello', 'olhel']) == [['listen', 'silent', 'enlist'], ['hello', 'olhel']]
p groupAnagrams(['abc', 'bca', 'cab', 'def', 'fed']) == [['abc', 'bca', 'cab'], ['def', 'fed']]
p groupAnagrams(['cat', 'dig', 'tac', 'god', 'act']) == [['cat', 'tac', 'act'], ['dig', 'god']]
