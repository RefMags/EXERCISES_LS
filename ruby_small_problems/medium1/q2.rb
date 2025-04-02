# def rotate_rightmost_digits(number, target_position)
#   str_number = number.to_s
#   target_num = str_number.slice!(-target_position)
#   str_number << target_num
#   str_number.to_i
# end
#
#
# def rotate_rightmost_digits(number, target)
#   arr_digits = number.to_s.chars.map(&:to_i)
#   target_index = arr_digits.length - target # (0-index)

#   # use delete_at to remove and return the element at the target index
#   target_number = arr_digits.delete_at(target_index)
#    result = arr_digits << target_number
#    result.join.to_i
# end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917
