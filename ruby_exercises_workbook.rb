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



