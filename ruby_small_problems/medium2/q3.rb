HASH = {lowercase: 0.0, uppercase: 0.0, neither: 0.0 }

def letter_percentages(str)
  up_case = ("A".."Z").to_a
  low_case = ("a".."z").to_a
  size = str.size

  str.each_char do |char|
    if up_case.include?(char)
      HASH[:uppercase] += 1
    elsif low_case.include?(char)
      HASH[:lowercase] += 1
    else
      HASH[:neither] += 1
    end
  end

  update_value = HASH.map do |key, value|
    (value / size) * 100
  end

  # p update_value
  update_value.each_with_index do |value, idx|
    if idx == 0
      HASH[:lowercase] = value
      # puts "#{HASH[:lowercase]} updated hash is #{HASH}"
    elsif idx == 1
      HASH[:uppercase] = value
    else
      HASH[:neither] = value
    end
  end
  p HASH
end


p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
