# Know when to use a "do/while" vs a "while" loop. Here's an example:

while answer.downcase != 'n' do
  puts "Continue? (y/n)"
  answer = gets.chomp
end

# When running this, ruby will throw an exception of "undefined local variable or method 'answer'". To correct this, we have to initialize answer before the while statement, like this:

answer = ''
while answer.downcase != 'n' do
  puts "Continue? (y/n)"
  answer = gets.chomp
end

# That certainly would work, but a slightly better implementation could be to use a "do/while" loop:

loop do
  puts "Continue? (y/n)"
  answer = gets.chomp
  break if answer.downcase == 'n'
end

# Here, the entire code is contained in the loop, and it's slightly easier to reason with. You could even do without the answer variable and use the user's input (i.e. gets.chomp) in the if condition directly, but using answer is fine -- remember, clarity over terseness.