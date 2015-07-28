# Use the each_with_index method to iterate through an 
# array of your creation that prints each index and value of the array.


arr = ["dog", "cat", "giraffe"]

arr.each_with_index { | item, index | puts "#{index + 1}. #{item}" }