   arr = [[1, 3], [2, 6], [3, 9]]
   mapped = arr.map do |sub_arr|
     sub_arr.map do |num|
       num * 2
     end
   end

   p mapped
