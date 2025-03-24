def merge(array1, array2)
    result = []
    index1 = 0
    index2 = 0

    while index1 < array1.length || index2 < array2.length
       if array1[index1] <= array2[index2]
         result << array1[index1]
         index1 += 1
       else
         result << array2[index2]
         index2 += 1
       end
     end

    result
end

merge([1, 5, 9], [2, 6, 8]) # Expected: [1, 2, 5, 6, 8, 9]
