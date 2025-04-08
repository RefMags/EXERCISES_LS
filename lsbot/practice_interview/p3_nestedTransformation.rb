def double_numbers(arr)
  return [] if arr.empty?

 mapped  = arr.map do |ele|
    if ele.is_a?(Array)
      ele.map do |ele|
        if ele.is_a?(Array)
          ele.map {|ele| ele.is_a?(Integer) ? (ele * 2) : ele }
        else
          ele.is_a?(Integer) ? (ele * 2) : ele
        end
      end
    else
      ele.is_a?(Integer) ? (ele * 2) : ele
    end
  end
  mapped
end


p double_numbers([1, 2, 3]) == [2, 4, 6]
p double_numbers([1, [2, 3], 4]) == [2, [4, 6], 8]
p double_numbers([1, [2, ['a', 3]], [4, 'b']]) == [2, [4, ['a', 6]], [8, 'b']]
p double_numbers(['a', 'b', 'c']) == ['a', 'b', 'c']
p double_numbers([]) == []
