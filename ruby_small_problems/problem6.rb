def triangle(number)
  (1..number).each do |count|
    # Calculate the number of spaces for right justification
    spaces = ' ' * (number - count)

    # Create a string of stars for current row
    stars = '*' * count

    # Print the row with spaces followed by stars
    puts "#{spaces}#{stars}"
  end
end

puts triangle(5)
