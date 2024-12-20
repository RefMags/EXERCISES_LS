### Q1.   What is truthiness in Ruby, and how does it differ from the boolean values `true` and `false`? Provide examples of values that are considered truthy and falsy in Ruby.

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
### Q2. Code Analysis Question:Consider the following code snippet:

```ruby
def check_value(value)
  if value
    puts "The value is truthy"
  else
    puts "The value is falsy"
  end
end
check_value(0)
check_value("")
check_value(nil)
check_value(false)
check_value("false")
```
#### Explain the output of each method call and why Ruby evaluates each value as truthy or falsy.

- The `check_value` method evaluate the truthiness of its arguments. In Ruby, all values are considered truthy except `nil` and `false`
Here is the output for each method call:
`check_value(0)` outputs "The value is truthy"(integers, even 0, truthy)
`check_value("")` outputs "The value is truthy"(empty strings are truthy)
`check_value(nil)`outputs "The value is falsy"(nil is falsy)
`check_value(false)`outputs "The value is falsy"(false is falsy)
`check_value("false")`outputs "The value is truthy"(the string "false" is truthy)

- the method works by using the truthiness of the `value` parameter in the `if` condition. if `value` is truthy, it prints that it's truthy; otherwise, it prints that it's falsy.
