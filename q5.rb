def staggered_case(str)
  result = ""

  str.each_char.with_index do |char, idx|
    idx.even? ? (result << char.upcase) : (result << char.downcase)
    # idx.even? ? (result << char.downcase) : (result << char.upcase) # Further exploration
  end

  result
end

#

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
