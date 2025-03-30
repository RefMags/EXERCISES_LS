def rotate_rightmost_digits(number, target_position)
  str_number = number.to_s
  target_num = str_number.slice!(-target_position)
  str_number << target_num
  str_number.to_i
end


# rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917
