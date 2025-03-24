array = [1, 2, 3, 4, 5]
array.each { |num| puts num if num > 3 }
result = array.map { |num| puts num if num > 3 }
p result
