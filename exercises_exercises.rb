arr =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |num|
puts num if num > 5  # output entries if greater than 5
end

arr_odd = arr.select {|num| num % 2 !=0} # new array with odd numbers
p arr_odd


arr << 11  # add '11' to end or array
p arr
puts arr

arr.unshift(0) # add '0' to the beginning of array
p arr

arr.pop # remove last value from array
p arr

arr.push(3) # append '3' to array
p arr

arr.uniq! # remove duplicates, i.e. keep only unique values
p arr





hash = {hair: 'blonde', eyes: 'blue'}
hash2 = {:hair => 'brown', :eyes => 'brown'}
puts hash
p hash2






h = {a:1, b:2, c:3, d:4}
puts h[:b]        # return value belonging to key ':b'

h[:e] = 5  # add {e:5} to the hash
puts h

h.delete_if do |k, v|  # delete values if < 3.5
  v < 3.5
end
p h




# manually add info from contact_data to the correct location in 'contacts' hash.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]

contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# output two values from the hash
puts "Joe's email is #{contacts["Joe Smith"][:email]}"
puts "Sally's email is #{contacts["Sally Johnson"][:email]}"

puts "-----------------"


# same as above but programatically iteratively adding the values

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end
puts contacts["Joe Smith"]


# as above but can work with multiple entries in the 'contacts' hash
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end
puts contacts





arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |item|
item.start_with?("s")  # remove all entries in array starting with 's'
end

puts arr 


arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if do |item|
  item.start_with?("s") || item.start_with?("w") # delete if item starts with 's' or 'w'
end

puts arr



arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if do |item|
  item.start_with?("s", "w") # delete if item starts with 's' or 'w', just shorter than above example
end

puts arr






puts "16. ##################################"
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map {|pairs| pairs.split}  # splits each string into an aray of arrays holding each word
p a
puts "------------"
a = a.flatten  # flattens the array of arrays into a single array. net effect is to put each word into it's own array entry
p a


