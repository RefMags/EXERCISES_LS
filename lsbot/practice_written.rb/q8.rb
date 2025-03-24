   def every_other(array)
     result = []
     array.each_with_index do |element, index|
       result << element if index % 2 == 0
     end
     result
   end

   p every_other([1, 4, 7, 2, 5]) # Expected: [1, 7, 5]
