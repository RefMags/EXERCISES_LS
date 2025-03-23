people = [
  { name: 'Alice', age: 30, hobbies: ['reading', 'hiking', 'painting'] },
  { name: 'Bob', age: 25, hobbies: ['gaming', 'reading'] },
  { name: 'Charlie', age: 35, hobbies: ['hiking', 'cooking', 'gaming', 'swimming'] },
  { name: 'Diana', age: 28, hobbies: ['painting'] }
]

result = people.sort_by do |person|
  person[:hobbies].count
end.each_with_object({}) do |person, hash|
  key = person[:hobbies].count
  p key
  hash[key] = [] unless hash[key]
  p hash
  hash[key] << person[:name]
end

p result
