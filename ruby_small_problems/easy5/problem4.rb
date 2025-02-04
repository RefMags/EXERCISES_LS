ALPHABET = ("a".."z").to_a

def cleanup(string_word)
  clean_chars = ""

  string_word.each_char do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars[-1] == ' '
    end
  end
  clean_chars
end

p cleanup("---what's my +*& line?") == ' what s my line '
