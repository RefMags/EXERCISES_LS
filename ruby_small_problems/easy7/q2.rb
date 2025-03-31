def letter_case_count(str)
  hash = {lowercase: 0, uppercase: 0, neither: 0}
  lowercase = ('a'..'z').to_a
  uppercase = ('A'..'Z').to_a

  str.each_char do |char|
    if lowercase.include?(char)
      hash[:lowercase] += 1
    elsif uppercase.include?(char)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end

  hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
