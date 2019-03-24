# A method to reverse a string in place.
# Time complexity: O(n) where n is the number of elems in string.
# Space complexity: O(1)
def string_reverse(my_string)
  return if !my_string
  (my_string.length / 2).times do |i|
    temp = my_string[i]
    my_string[i] = my_string[-i - 1]
    my_string[-i - 1] = temp
  end
  return my_string
end
