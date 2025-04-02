def word_cap(str)
  # arr = str.downcase.split

  # transformed = arr.map do |word|
  #   word.capitalize
  # end
  # p transformed.join(" ")
  #
  p str.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
