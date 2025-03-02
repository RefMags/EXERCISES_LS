def select_letter(sentence, letter)
  result = ""
  counter = 0

  loop do
    current_letter = sentence[counter]

    if current_letter == letter
      result << current_letter
      p result
    end
    counter += 1
    break if counter == sentence.size
  end
  result
end


question = 'How many times does a particular character appear in this sentence?'
select_letter(question, 'a') # => "aaaaaaaa"
select_letter(question, 't') # => "ttttt"
select_letter(question, 'z') # => ""
