=begin
P
==============
Problem Requirement: Create and return an array consisting of pairs
of the first and last characters from a string input. Note that creating this
pairs follows an inward movement.

Input: string
Return: array of strings : string consists of the "first and last character" of original
                          string.
                          - what about empty original string?
Output: array of strings

E
==============
APPROACH 1: join the first and last element by pop
'lorem ipsum'


1st pop: pair => "lm"  ; last_ele => str.last "m" ; arr => 'lorem ipsu'
2nd pop: pair => "ou"  ; last_ele => str.last "u" ; arr => 'lorem ips'
3rd pop: pair => "es"  ; last_ele => str.last  "s"; arr => 'lorem ip'
.........

APPROACH 2:

D Approach 1 selected
==============
Array =  ["l", "o", "r", "e", "m", " ", "i", "p", "s", "u", "m"]
Processing : pair string
          -  Array of paired string ['lm', 'ou', 'rs', 'ep', 'mi', ' ']


A
================
- INITIALIZE an empty array
- CONVERT the string to array
- ITERATE through the array elements
  - For each current element `current_element`, ADD the last element
  MAINTAINING an inward movement during pairing:
    - GET the last element ie `last_element`
    - For each current iteration, POP the `last_element` from array
      - ADD the return of the pop to the `current_element`
    - APPEND the combination of `current_element` and `last_element`
- AFTER the iteration
- RETURN the modified array
=end

def either_end(str)
  pairs_arr = []
  arr = str.chars
  original_length = arr.length

  arr.each_with_index do |ele, idx|
    break if idx >= original_length / 2 # stop after half the pairs are made
    pairs_arr << ele + arr.pop
  end
  pairs_arr << arr[original_length / 2] if original_length.odd?
  pairs_arr
end


string = 'lorem ipsum'
puts either_end(string) == ['lm', 'ou', 'rs', 'ep', 'mi', ' ']

string = 'helloworld'
puts either_end(string) == ['hd', 'el', 'lr', 'lo', 'ow']

string = '1234'
puts either_end(string) == ['14', '23']

string = ''
puts either_end(string) == []
