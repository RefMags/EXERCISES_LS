BLOCKS = ["BO", "XK", "DQ ", "CP", "NA" , "GT", "RE", "FS", "JW", "HU", "VI", "LY","ZM"]

def block_word?(word)
  result = ""
  up_word = word.upcase

  BLOCKS.each do |block|
    if up_word.include?(block[0])
      result << block[0]
    elsif up_word.include?(block[1])
      result << block[1]
    end
  end

  # up_word.chars.sort == result.chars.sort ? true : false

  # up_word.chars.tally == result.chars.tally ? true : false

end

# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true
p block_word?('apples') #== false
# p block_word?('Baby') == false
