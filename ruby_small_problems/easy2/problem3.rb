puts "What is the bill?"
bill_amount = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f

tip_amount = (tip_percent / 100 * bill_amount).round(2)
total_bill = (bill_amount + tip_amount).round(2)

puts "The tip is $#{tip_amount}."
puts "The total is $#{total_bill}"
