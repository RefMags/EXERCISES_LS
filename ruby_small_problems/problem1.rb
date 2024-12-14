# puts "Please insert your name:"
# name = gets.chomp

# puts "#{name.empty? ? "Teddy" : name} is #{rand(20..200)} years old"

def get_name(name="Teddy")
  puts "#{name} is #{rand(20..200)} years old."
end

puts "Insert your name:"
name = gets.chomp
name = name.empty? ? get_name : get_name(name)
