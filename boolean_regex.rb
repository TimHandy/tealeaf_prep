def has_a_b?(string)
  if string =~ /b/
    puts "we have a match!"
  else
    puts "No match."
  end
end


has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")




