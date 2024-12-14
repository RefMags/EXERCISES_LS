def print_in_box(text)
  horizontal_rule = "+#{'-' * (text.size + 2)}+"
  width = "|#{ ' ' * (text.size + 2)}|"

  puts horizontal_rule
  puts width
  puts "| #{text} |"
  puts width
  puts horizontal_rule
end


puts print_in_box('To boldly go where no one has gone before.')
puts print_in_box('To boldly go')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
