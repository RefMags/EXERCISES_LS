ALPHABET = ("a".."z").to_a + ("A".."Z").to_a

def staggered_case(str)
  result = []

  str.chars do |char|
    if ALPHABET.include?(char)
      last_ele = result.reverse.find do |ele|
        p ALPHABET.include?(ele)
      end
      last_ele
        # if last_ele == last_ele.upcase
        #   result << char.downcase
        # else
        #   result << char.upcase
        # end
    else
      result << char
    end
  end
  result
end

staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
