   hash = { a: 'ant', b: 'bear', c: 'cat' }
   new_hash = hash.each_with_object({}) do |(key, value), result|
      result[value] = key
   end
   p new_hash
