cities = ["tokyo", "osaka"]

p cities.map { |city| city.upcase }
p cities

# p cities.map  {|city| city.upcase! }
# p cities

p cities.map! {|city| city.upcase }
p cities
