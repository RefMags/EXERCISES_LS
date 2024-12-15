def prompt(message)
  puts ">> #{message}"
end

prompt("Please enter an integer greater than 0:")
number = gets.chomp.to_i
prompt ("Enter 's' to compute the sum, 'p' to compute the product.")
compute = gets.chomp

if compute == 's'
  total = 0
  1.upto(number) {|value| total+=value}
  prompt("The sum of the integers between 1 and #{number} is #{total}.")
elsif compute == 'p'
  product = 1
  1.upto(number) {|value| product *= value}
  prompt("The product of the integers between 1 and #{number} is #{product}.")
else
  prompt("Unknown operation.")
end
