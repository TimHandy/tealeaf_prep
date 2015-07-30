# passing block

def take_block(&block)
  block.call
end

take_block do 
  puts "block being called in the method!"
end