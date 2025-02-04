# def swap(str_word)
#    words = str_word.split

#    swapped_word = words.map do |word|
#     word[0], word[-1] = word[-1], word[0]
#     word
#    end

#    swapped_word.join(" ")
# end

# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'


def swap(str)
  str.split.map do |word|
    first, *mid, last = word.chars
    "#{last}#{mid.join}#{first}"
  end.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
