hash = { a: 1, b: 2, c: 3, d: 4 }
new_hash = hash.each_with_object({}) do |(key, value), result|
  result[key] = value * 2 if value.even?
end

p new_hash
