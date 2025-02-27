def combining_arg(arr1, arr2)
  new_arr = []
  counter1 = 0
  counter2 = 0

  loop do
    if counter1 < arr1.size && counter2 < arr2.size
      new_arr << arr1[counter1]
      new_arr << arr2[counter2]
      counter1 += 1
      counter2 += 1
    elsif counter1 < arr1.size
      new_arr << arr1[counter1]
      counter1 += 1
    elsif counter2 < arr2.size
      new_arr << arr2[counter2]
      counter2 += 1
    else
      break
    end
  end
  p new_arr
end

# combining_arg([2, 3, 5], [7, 9, 10]) #== [2, 7, 3, 9, 5, 10]
combining_arg([6, 20], [4, 19, 22, 31]) #== [6, 4, 20, 19, 22, 31]
