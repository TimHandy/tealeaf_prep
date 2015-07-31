strings = ["laboratory", "experiment", "Pans Labyrinth", "Elaborate", "polar bear"]

strings.each do |string|
  if string =~ /lab/
    puts string
end
end

