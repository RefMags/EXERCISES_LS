### Q1. Explaining the code:
```ruby
   def modify_string(str)
     str << " World"
     str = "Hello Universe"
   end

   greeting = "Hello"
   modify_string(greeting)
   puts greeting
 ```
 - The output of the code is `Hello World` at line 10, because the `modify_string` method mutates the `str` parameter, reflecting changes in the original `greeting`reference.

 - The `str` references `Hello` that was initialized on line 8 and its reference passed as an argument to `modify_string` method call on line 9. The argument binds to the parameter `str`, referencing `Hello`

 - `str << " World"` mutates `Hello` (because of the `<<`) that is referenced by `str` and `greeting`. This behavior shows that objects that are passed by reference allow mutations that affect the original object.
 - However,the reassignment of `str` on line 3 is local to the method and does not affect `greeting`. Hence, this reassignement demonstrate pass-by-value behavior.


### Q2. Debugging a method
```ruby
   def double_elements(arr)
     arr.each do |element|
       element *= 2
     end
   end

   numbers = [1, 2, 3, 4, 5]
   double_elements(numbers)
   p numbers
 ```
- The `double_elements` method does not modify the array because of the non-mutating method `each` called on the `arr`.
  - `each` iterates over the array but doesn't change it.
  - `element *= 2` modifies the local block variable `element`, not the array elements themselves.
  - Therefore, these changes to the `arr` reference are local to the method and do not affect the original `numbers` array.

- `numbers`  is initialized and reference the array object `[1, 2, 3, 4, 5]`. When `double_elements(numbers)` is called, Ruby passes a reference of `numbers`array to `arr` parameter.

- Inside the method, `each` method is called on the `[1, 2, 3, 4, 5]` that both `arr` and `numbers` reference.
  - A `do..end` block is passed as an argument. The `element` block parameter acts as a local variable for each element per iteration to perform the code evaluation within the block.
  each `element` is multiplied by `2` and reassigned to `element` in the following syntax `element *= 2`.
- The `each` method is non-mutating, and only changes of each element will affect those local to the method when its called.

- To reflect a change on the array, we can call `map!` mutating method that causes permanent change in each element per each iteration when a block is passed.
```ruby
def double_elements(arr)
  arr.map! do |element|
    element *= 2
  end
end
numbers = [1, 2, 3, 4, 5]
double_elements(numbers)
p numbers
```
