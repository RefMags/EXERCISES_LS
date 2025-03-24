def find_special(collection)
  collection.map do |item|
    if item.is_a?(Hash)
      item.select { |_, v| v.is_a?(String) && v.length > 3 }
    elsif item.is_a?(Array)
      item.select { |e| e.odd? }
    else
      item
    end
  end
end

mixed_data = [
  { a: 1, b: 'hello', c: 'world' },
  [1, 2, 3, 4, 5],
  'string',
  { d: 'ruby', e: 2, f: 'rails' }
]

result = find_special(mixed_data)
p result
