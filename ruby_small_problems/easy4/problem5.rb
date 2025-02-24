def multisum(limit)
  multiples_3 = []
  multiples_5 = []
  counter = 1

  while (multiple_of_3 = 3 * counter) <= limit
    multiples_3 << multiple_of_3
    counter += 1
  end

  counter = 1
  while (multiple_of_5 = 5 * counter) <= limit
    multiples_5 << multiple_of_5
    counter += 1
  end

  p uniq_multiples_of_3_and_5 = (multiples_3 + multiples_5).uniq
  total = uniq_multiples_of_3_and_5.sum
  p total
end


## Alternative

# def multisum(limit)
#   multiples_3 = []
#   multiples_5 = []

#   # loop do
#   #     multiple_of_3 = 3 * counter
#   #     break if multiple_of_3 > limit
#   #     multiples_3 << multiple_of_3
#   #     counter += 1
#   # end

#   # counter = 1
#   # loop do
#   #   multiple_of_5 = 5 * counter
#   #   break if multiple_of_5 > limit
#   #   multiples_5 << multiple_of_5
#   #   counter += 1
#   # end

#   uniq_multiples = (multiples_3 + multiples_5).uniq
#   total = uniq_multiples.sum
#   total
# end


multisum(20) #== 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168
