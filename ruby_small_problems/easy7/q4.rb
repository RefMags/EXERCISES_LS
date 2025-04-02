def swapcase(str)
  new_string = ""

  str.each_char do |char|
    if char == char.upcase
      new_string << char.downcase
    elsif char == char.downcase
      new_string << char.upcase
    else
        new_string << char
    end
  end
  new_string
end

p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
