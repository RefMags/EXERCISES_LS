def multisum(multiple)
  multiples_3 = []
  multiples_5 = []
  counter = 1

  # multiplying 3, starting with 1, until we get a product of 20
  loop do
    multiple_of_3 = 3 * counter
    break if multiple_of_3 >= multiple
    multiples_3 << multiple_of_3
    puts "Counter: #{counter}, Multiple of 3: #{multiple_of_3}, Array: #{multiples_3} ,Multiple: #{multiple}"
    counter += 1
  end
end


multisum(20) #== 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168
