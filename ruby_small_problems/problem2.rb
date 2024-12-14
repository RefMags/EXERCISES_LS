puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_in_square_meters = (length * width).round(2)
area_in_square_feet = (area_in_square_meters * 10.7639).round(2)
puts "The area of the room is #{area_in_square_meters} square meters (#{area_in_square_feet} square feet)."
