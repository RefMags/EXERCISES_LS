# arr = [1, 2, 3, 4, 5, 8]

# p arr.map { |n| n * 2 }
# p arr.select { |n| n.even? }

arr = ["tokyo" , "osaka"]
arr_ = arr.map! {|n| n.capitalize }
p arr_
p arr

hash = { a: 'ant', b: 'bear', c: 'cat' }
transformed = hash.transform_values! {|v| v.capitalize }
p transformed
p hash
