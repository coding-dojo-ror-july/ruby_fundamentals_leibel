puts "*******************"
puts "array class methods"
puts "*******************"

a = ["a","b","c"]
b = [1,2,3]
c = [1,5,2]
# .at 
puts "arr a.at " + a.at(2)

# array reverse
puts a.reverse
# array delete (returns deleted item)
puts b.to_s
puts b.delete(2)
puts b.to_s
# .length
puts b.length
# .sort
puts c.sort.to_s
# .slice Returns the deleted object (or objects), or nil if the index is out of range.
puts a.slice!(1) 
# .shuffle Returns a new array with elements of self shuffled.
a = ["a","b","c"]
puts a.shuffle.to_s
# .join Returns a string created by converting each element of the array to a string, separated by the given separator.
puts a.join.to_s
# .insert With insert you can add a new element to an array at any position.
puts a.insert(2, "f")
puts a.to_s
# .values_at Returns an array containing the elements in self corresponding to the given selector(s).
puts a.values_at(1, 0)
# 

