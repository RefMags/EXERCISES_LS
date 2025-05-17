def reverse_segments(arr, int)
  substring = []
  substrings = []

  (0..arr.length - 1).step(int).each do |start|
    end_idx= [start + int - 1, arr.length - 1].min

    p end_idx
  end
end



reverse_segments([1, 2, 3, 4, 5, 6], 3) # [3, 2, 1, 6, 5, 4]

  # puts reverse_segments([1, 2, 3, 4, 5], 2).inspect # [2, 1, 4, 3, 5]

  # puts reverse_segments([7, 8, 9], 4).inspect # [7, 8, 9]

  # puts reverse_segments([1, 2, 3, 4], 2).inspect # [2, 1, 4, 3]
