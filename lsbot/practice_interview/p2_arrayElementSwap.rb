def swap_adjacent(arr)
  return [] if arr.empty?
    arr_dup = arr.dup

    last_ele = arr_dup.pop if arr_dup.size.odd?

    swapped = arr_dup.map.with_index do |ele, idx|
      if idx.even?
        idx < arr_dup.size ? arr_dup[idx + 1] : ele
      else
        arr_dup[idx - 1]
      end
    end

   (swapped << last_ele) if arr.size.odd?
   swapped
end


 p swap_adjacent([1, 2, 3, 4, 5]) == [2, 1, 4, 3, 5]
p swap_adjacent(['a', 'b', 'c', 'd']) == ['b', 'a', 'd', 'c']
p  swap_adjacent([]) == []
p  swap_adjacent([1]) == [1]
p swap_adjacent([1, 2]) == [2, 1]
