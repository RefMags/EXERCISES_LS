def mineLocation(grid)
  position = []

  grid.each_with_index do |row, row_index|
    row.each_with_index do |location, col_index|
      position << [row_index , col_index ] if location == 1
    end
  end
  position.flatten

  ## Alternative 2
  # grid.each_with_index do |location, row_index|
  #   if location.include?(1)
  #     position << [row_index, location.index(1)]
  #   end
  # end

  # position.flatten

  ## Alternative 3
  # grid.each_with_index do |row, row_index|
  #   if (col_index = row.index(1))
  #     return [row_index, col_index]
  #   end
  # end
  # []
end


p mineLocation( [ [0, 0, 0], [0, 0, 1], [0, 0, 0] ] ) #== [0, 0]
# p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
# p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
# p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
# p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
# p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]
