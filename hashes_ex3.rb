

arr = {name: "Tim", weight: "78 kg"}


puts arr.values
puts arr.keys
puts "#{arr.keys} - #{arr.values}" 


arr.each_key {|key| puts key}
arr.each_value {|value| puts value}
arr.each {|key, value| puts "the title is #{key}, the weight is #{value}"}