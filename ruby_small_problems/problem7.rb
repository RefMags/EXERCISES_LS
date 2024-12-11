def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to mas-lib program! Ready to play?")

loop do
  prompt("Enter a noun: ")
  noun = gets.chomp

  prompt("Enter a verb: ")
  verb = gets.chomp

  prompt("Enter a adjective: ")
  adjective = gets.chomp

  prompt("Enter a adverb: ")
  adverb = gets.chomp

  prompt("Do you walk your #{adjective} #{noun} #{adverb}? That's hilarious!")

  prompt("Do you want to play again? (Y to play again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
