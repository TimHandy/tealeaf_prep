irb :002 > array = [1, 'Bob', 4.33, 'another string']


irb :003 > array.first
=> 1


irb :004 > array.last
=> "another string"


irb :006 > array[2]
=> 4.33



irb :007 > array.pop
=> "another string"
irb :008 > array
=> [1, "Bob", 4.33]


irb :009 > array.push("another string")
=> [1, "Bob", 4.33, "another string"]




irb :010 > array.pop
=> "another string"
irb :011 > array << "another string"
=> [1, "Bob", 4.33, "another string"]




irb :001 > a = [1, 2, 3, 4]
=> [1, 2, 3, 4]
irb :002 > a.map { |num| num**2 }
=> [1, 4, 9, 16]
irb :003 > a.collect { |num| num**2 }
=> [1, 4, 9, 16]
irb :004 > a
=> [1, 2, 3, 4]




irb :005 > a.delete_at(1)
=> 2
irb :006 > a
=> [1, 3, 4]



irb :007 > my_pets = ["cat", "dog", "bird", "cat", "snake"]
=> ["cat", "dog", "bird", "cat", "snake"]
irb :008 > my_pets.delete("cat")
=> "cat"
irb :009 > my_pets
=> ["dog", "bird", "snake"]




irb :010 > b = [1, 1, 2, 2, 3, 3, 4, 4]
=> [1, 1, 2, 2, 3, 3, 4, 4]
irb :011 > b.uniq
=> [1, 2, 3, 4]
irb :012 > b
=> [1, 1, 2, 2, 3, 3, 4, 4]


irb :013 > b = [1, 1, 2, 2, 3, 3, 4, 4]
=> [1, 1, 2, 2, 3, 3, 4, 4]
irb :014 > b.uniq!
=> [1, 2, 3, 4]
irb :015 > b
=> [1, 2, 3, 4]



irb :001 > numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
irb :002 > numbers.select { |number| number > 4 }
 => [5, 6, 7, 8, 9, 10]
irb :003 > numbers
 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]



 irb :001 > a = [1, 2, 3]
=> [1, 2, 3]
irb :002 > b = [2, 3, 4]
=> [2, 3, 4]
irb :003 > a == b
=> false
irb :004 > b.pop
=> 4
irb :005 > b.unshift(1)  # adds the arguments specified to the front of the array
=> [1, 2, 3]
irb :006 > a == b
=> true



a = [1, 2, 3]
a.each { |e| puts e }

# Outputs
1
2
3
=> [1, 2, 3]



a = [1, 2, 3]
a.each { |e| puts e + 2 }

# Outputs
3
4
5
=> [1, 2, 3]