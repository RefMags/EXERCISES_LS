require "pry"

def crunch(str)
  new_str = ""
  counter = 0

  loop do
    break if counter == str.size

    current_char = str[counter]
    new_str << current_char if current_char != new_str[-1]

    counter += 1
  end
  new_str
end



p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
