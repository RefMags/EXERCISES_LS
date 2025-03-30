def spin_me(str)
  reversed = str.split.each do |word|
    word.reverse!
  end.join(" ")
end


spin_me("hello world") # "olleh dlrow"
