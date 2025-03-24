def count_occurrences(arr)
  hash = arr.each_with_object({}) do |el, hsh|
    if hsh[el]
      hsh[el] += 1
    else
      hsh[el] = 1
    end
  end

  p hash
end



vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'suv']
count_occurrences(vehicles)
# Expected output:
# car => 3
# truck => 2
# SUV => 1
# motorcycle => 1
# suv => 1
