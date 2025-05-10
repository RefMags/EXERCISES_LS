
def findAverages(arr, int)
  # size = arr.size
  (0..arr.size - int).map do |idx|
    (arr[idx, int].sum) / int.to_f
  end
end

p findAverages([1, 2, 3, 4, 5, 6], 3) == [ 2, 3, 4, 5 ]

p findAverages([1, 2, 3, 4, 5], 2) == [1.5, 2.5, 3.5, 4.5]

p findAverages([10, 20, 30, 40, 50], 4) == [ 25, 35 ]

p findAverages([5, 5, 5, 5, 5], 1) == [ 5, 5, 5, 5, 5 ]

p findAverages([1, 3, 2, 6, -1, 4, 1, 8, 2], 5) == [2.2, 2.8, 2.4, 3.6, 2.8]
