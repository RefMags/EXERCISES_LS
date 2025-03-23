books = [
  {title: "1984", author: "Orwell", pages: 328},
  {title: "Hobbit", author: "Tolkien", pages: 310},
  {title: "Dune", author: "Herbert", pages: 412},
  {title: "It", author: "King", pages: 1138}
]

sorted_books = books.sort_by do |book|
  p book[:pages]
end

p sorted_books
