p ALPHABET = ("a".."z").to_a + ("A".."Z").to_a

def staggered_case(str)
  result = ""

  str.each_char do |char|
    if ALPHABET.include?(char)
      if result[-1] == result[-1].upcase

      end
    end
  end
end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
