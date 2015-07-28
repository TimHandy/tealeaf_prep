
# Write a while loop that takes input from the user, 
# performs an action, and only stops when the user 
# types "STOP". Each loop can get info from the user.

x = ""
while x != "STOP" do
  puts "hi, how are you?"
  ans = gets.chomp
  puts "want me to ask you again?"
  x = gets.chomp
end










# print "gimme some string: "
# input = gets.chomp
# while gets.chomp != ""
  
#   if input != "STOP"
#   puts "you said #{input}"
# else 
#   break
# end
# end
