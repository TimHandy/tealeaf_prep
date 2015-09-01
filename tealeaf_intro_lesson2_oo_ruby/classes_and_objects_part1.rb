
module Towable
  def can_tow?(tons)
    tons < 2 ? true : false
  end
end


class Vehicle
  attr_accessor :color
  attr_reader :year
  attr_accessor :model

  @@total_vehicles = 0

  def self.get_total_vehicles
    @@total_vehicles
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def initialize(year, color, model)  
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@total_vehicles += 1
  end
  
  def speed_up(number)
    @current_speed += number    
  end

  def brake(number)
    @current_speed -= number
  end

  def current_speed
    puts "your speed is #{@current_speed} mph"
  end

  def shutdown
    @current_speed = 0
    puts "shutdown. Speed = 0mph."
  end

  def spray_paint(color)
    self.color = color
  end

  def age
    "your #{self.model} is #{years_old} years old"
  end

  private

  def years_old
    #calc age of vehicle from the year
    Time.now.year - self.year    
  end

end


class MyTruck < Vehicle


  include Towable  # This is a mixin of module Towable

NUMBER_OF_DOORS = 2

  def to_s  # overides the normal to_s when called by puts, so that we can make it a bit more useful.
    puts "my truck is a #{self.year}, #{self.color}, #{@model}"  # can't use self. for model as we dont' have an attr_* method for it, therefore have to use the instance variable directly.
    ## Note the "puts" calls "to_s" automatically.
  end

end


class MyCar < Vehicle

  NUMBER_OF_DOORS = 4


  def to_s  # overides the normal to_s when called by puts, so that we can make it a bit more useful.
    puts "my car is a #{self.year}, #{self.color}, #{@model}"  # can't use self. for model as we dont' have an attr_* method for it, therefore have to use the instance variable directly.
    ## Note the "puts" calls "to_s" automatically.
  end
 

end

lumina = MyCar.new(1997, "chevy lumina", "white")
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(30)
lumina.current_speed
lumina.brake(20)
lumina.shutdown
lumina.current_speed

lumina.spray_paint('red')
puts lumina.color

MyCar.gas_mileage(13, 351)

my_car = MyCar.new(1999, "Green", "Focus")
my_truck = MyTruck.new(2000, "orange", "F250")

puts my_car

puts my_truck

puts "total vehicles is #{Vehicle.get_total_vehicles}"

puts my_truck.can_tow?(1)


puts "method lookup for Vehicle is\n" 
puts Vehicle.ancestors

puts "----"

puts "method lookup for MyTruck is\n" 
puts MyTruck.ancestors

puts "----"

puts "method lookup for MyCar is\n" 
puts MyCar.ancestors

puts "----"

puts my_truck.age



# Create a class 'Student' with attributes name and grade. 
# Do NOT make the grade getter public, so joe.grade will raise an error. 
# Create a better_grade_than? method, that you can call like so...
# puts "Well done!" if joe.better_grade_than?(bob)

class Student
  
  def initialize(n, g)
    @name = n
    @grade = g
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected # this is key it means that in the above better_grade_than? method we can access the other_student.grade variable.

  def grade
    @grade 
  end
end

joe = Student.new('Joe', 8)
bob = Student.new('Bob', 3)


puts "well done!" if joe.better_grade_than?(bob)