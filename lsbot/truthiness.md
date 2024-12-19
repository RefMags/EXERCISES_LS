# Q1.   What is truthiness in Ruby, and how does it differ from the boolean values `true` and `false`? Provide examples of values that are considered truthy and falsy in Ruby.

Truthiness in Ruby referes to an object's property that determines whether it considered true or false in a conditional context while boolean values are specific data types that can only be `true` or `false` and are the only instances of TrueClas and FalseClass respectively.
All objects in Ruby are truthy except for `nil` and `false`. This meand that in conditional statements, any value other than `nil` or `false` will be treated as true. Here is a demonstration of the concept:

```ruby
if "Hello"
  puts "It is truthy"
end
# Output: `It is truthy` is printed since `Hello` is a string object and is truthy.
```

```ruby
if nil
  puts "It not printed"
end
# Output: Nothing is printed to the console since `nil` is a falsy value.
```
