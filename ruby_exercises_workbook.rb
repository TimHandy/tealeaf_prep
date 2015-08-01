# http://www.gotealeaf.com/books/ruby_workbook/read/easy_quiz_1

puts "1. ##############"

numbers = [1, 2, 2, 3]
numbers.uniq
puts numbers
puts "------------"
numbers.uniq!
puts numbers




puts "3. ##############"



advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')
p advice




puts "5. ##############"

# Programmatically determine if 42 lies between 10 and 100

range = (10..100)
puts "yes it does" if range.include?(42) 


(0..100).cover?(42)



puts "6. ##############"


famous_words = "and seven years ago..."
puts "Four score and #{famous_words}"

puts "Four score and " + famous_words

puts famous_words.prepend("Four score and ")



puts "7. ##############"
def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

puts add_eight(add_eight(add_eight(add_eight(add_eight(number)))))


puts "8. ##############"

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones.flatten!




puts "9. ##############"

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p flintstones.assoc("Barney")


puts "10. ##############"

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}
flintstones.each_with_index do |item, index|
  flintstones_hash[item] = index
end
p flintstones_hash



# http://www.gotealeaf.com/books/ruby_workbook/read/easy_quiz_2

puts "1. ##############"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.assoc("Herman") 

p ages.has_key?("Spot")

p ages.include?("Eddie")


puts "2. ##############"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages_total = 0
ages.each do |name, age|
  ages_total += age
end

puts ages_total

# or alternatively...

ages.values.inject(:+)

# This uses ages.values to make an array, then uses the inject method which is part of the Enumerable module which is included in Array -- it is wise to augment your knowledge of what you can do with arrays by studying Enumerable.
# The strange-looking parameter to inject is simply a variety of the inject method which says "apply the + operator to the accumulator and object parameters of inject".


puts "3. ##############"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if {|key, value| value > 100}
p ages

# or ages.keep_if could also be used.


puts "4. ##############"

munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.capitalize
puts munsters_description.swapcase
puts munsters_description.downcase
puts munsters_description.upcase


puts "5. ##############"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

p ages


puts "6. ##############"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min


puts "7. ##############"

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?("dino")

p advice.match("dino")
p advice.match("Dino")



puts "8. ##############"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.index { |name| name[0, 2] == "Be" }   # The 2 meaning two characters, and 0 meaning from position 0, i.e. the start of each item.

puts "9. ##############"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# shorten to three characters
flintstones.map! { |name| name[0, 3] } # The 3 meaning three characters, and 0 meaning from position 0, i.e. the start of each item.


puts flintstones


# http://www.gotealeaf.com/books/ruby_workbook/read/easy_quiz_3


puts "2. ##############"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"

p flintstones


puts "3. ##############"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push("Dino").push("Hoppy") # push returns the array so we can chain

flintstones.concat(%w(johnny david))

p flintstones


puts "4. ##############"

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(0, advice.index('house'))  # i don't get this?
puts advice




puts "5. ##############"

statement = "The Flintstones Rock!"
# count the letter 't' in statement. Doesn't count 'T' though
puts statement.scan('t').count


puts "5. ##############"

title = "Flintstone Family Members"

puts title.center(40)


# http://www.gotealeaf.com/books/ruby_workbook/read/intermediate_quiz_1


puts "1. ##############"

10.times {|number| puts (" " * number) + "The Flintstones Rock!"}


puts "2. ##############"

# This is very scary stuff. I'm not good enough to write this.
result = {}
statement = "The Flintstones Rock"
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end



puts "8. ##############"

def titleize!(words)
  words.split.map { |word| word.downcase.capitalize  }.join(' ')
end
puts titleize!("this is An effin string")


puts "9. ##############"

munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# add addtional age_group key depending on kid, adult, senior. k
# kid is age 0-17
# adult is 18-64
# senior i 65+

