def prompt(message)
  puts "=> #{message}"
end

prompt("What is your name?")
name = gets.chomp


if name[-1] == "!"
  name = name.chop
  prompt("HELLO #{name.upcase}. WHY ARE WE SCREAMING?")
else
  prompt("Hello #{name}.")
end
