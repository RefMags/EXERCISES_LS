def sum_of_greater_values(arr)
  sum = 0
  new_arr = []

  arr.each do |ele1|
    arr.each do |ele2|
      sum += ele2 if ele2 > ele1
    end

    new_arr << ele1 if sum == 0
    new_arr << sum if sum > 0
    sum = 0
  end
  p new_arr
end


sum_of_greater_values([3, 2])
p sum_of_greater_values([3, 2, 15, 10, 20]) == [45, 48, 20, 35, 20]

# On the first iteration
# Outer:=
  # I = 1; idx = 0, value = 3
  # Inner:=
      # I = 1; idx = 0, value = 3

# On the second iteration
# Outer:=
  # I = 2; idx = 0, value = 3
  # Inner:=
      # I = 2; idx = 1, value = 2

# On the third iteration
# Outer:=
  # I = 3; idx = 0, value = 3
  # Inner:=
      # I = 2; idx = 2, value = 15
