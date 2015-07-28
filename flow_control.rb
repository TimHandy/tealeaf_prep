
def allcaps(string)
  result = string.length > 10 ? string.upcase : string
end

puts allcaps("asdfasdfasdf")

puts allcaps("tyert")




# print "give me a number between 0 and 100: "
# number = gets.chomp.to_i
# if number <= 50
#   puts "number is between 0 and 50"
# elsif number >= 51 && number <= 100
#   puts "number is between 51 and 100"
# else
#   puts "number is > 100"
# end






def numcase(number)
  case
  when number <= 50
    puts "number is between 0 and 50"
  when number >= 51 && number <= 100
    puts "number is between 51 and 100"
  else
    puts "number is > 100"
  end
end
print "give me a number between 0 and 100: "
number = gets.chomp.to_i
numcase(number)

