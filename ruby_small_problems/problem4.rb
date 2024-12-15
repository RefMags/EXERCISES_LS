def prompt(message)
  puts "=> #{message}"
end

prompt("What is your age?")
user_current_age = gets.chomp.to_i

prompt("At what age would you like to retire?")
user_retirement_age = gets.chomp.to_i

current_year = Time.now.year
work_years_ahead = user_retirement_age - user_current_age
retirement_year = current_year + work_years_ahead

prompt("Its #{current_year}. You will retire in #{retirement_year}.")
prompt("You have only #{work_years_ahead} years of work to go!")
