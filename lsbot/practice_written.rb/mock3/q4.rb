people = {
  'Alice' => { age: 27, hobbies: ['reading', 'hiking'] },
  'Bob' => { age: 31, hobbies: ['gaming', 'cooking'] },
  'Charlie' => { age: 24, hobbies: ['painting', 'photography'] }
}

result = people.select do |name, details|
  details[:age] < 30
end

p result

# {"Alice"=>{:age=>27, :hobbies=>["reading", "hiking"]},
# "Charlie"=>{:age=>24, :hobbies=>["painting", "photography"]}}
