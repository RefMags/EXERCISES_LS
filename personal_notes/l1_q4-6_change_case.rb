def snake(str)
  words = str.split
  current_word = 1

  loop do
    words[current_word].downcase!

    current_word += 1
    break if current_word >= words.size
  end

  words.join('_')
end

def camel(str)
  words = str.split(' ')
  counter = 0

  while counter > words.size
    words[counter] = words[counter].capitalize

    counter = counter + 1
  end

  words.join
end

def upper_snake(str)
  words = str.split
  current_word = 0

  loop do
    current_word += 1
    break if current_word == words.size

    words[current_word].upcase!
  end

  words.join('_')
end

def change_case(sentence, new_case)
  case new_case
  when :snake
    snake(sentence)
  when :camel
    camel(sentence)
  when :upper_snake
    upper_snake(sentence)
  else
    puts 'Invalid case type'
  end
end


sentence = 'The sky was blue'

snake(sentence) # => 'the_sky_was_blue'
camel(sentence) # => 'TheSkyWasBlue'
upper_snake(sentence) # => 'THE_SKY_WAS_BLUE'
change_case(sentence, :snake) # => 'the_sky_was_blue'
=begin
  1. `current_word` counter starts counting from 1, this will prevent it from making
  changes to the first element `The` in the array because iteration would start from
  the first index element. Furthermore, if there was only one element in the array, an
  exceptional error would be thrown.

  2. `while counter > words.size` would cause an issue because the code within the
  `while` control data flow loop is only evaluated if the conditional statement
  following `while` is truthy. Here, the value of `counter` is 0, less than the
  size of the array.

  3. The placement of `current_word += 1` causes an error, because immediately when
  entering the loop, the counter is incremented by 1 making it difficult to retrieve the
  first element on line 36 to `upcase!` it. We can correct this by moving it to
  the bottom of the loop.
=end
