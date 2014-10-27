# require 'pry'
# class Vehicle
#   attr_accessor :color
#   attr_reader :year, :model
#
#   def self.descendants
#     @@descendants ||= []
#   end
#
#   def self.inherited(descendant)
#     descendants << descendant
#     puts descendants
#   end
#
#   def self.mileage(gallons, miles)
#     puts "#{miles / gallons} miles per gallon"
#   end
#
#   def initialize(year, model, color)
#     @year = year
#     @color = color
#     @model = model
#     @speed = 0
#   end
#
#   def speed_up(number)
#     @speed += number
#     puts "You are traveling at #{@speed} mph."
#   end
#
#   def brake(number)
#     @speed -= number
#     puts "You have slowed down to #{@speed} mph."
#   end
#
#   def speed
#     puts "You are going #{@speed}mph"
#   end
#
#   def shut_off
#     @speed = 0
#     puts "You have slowed down to #{@speed} mph."
#   end
#
#   def spray_paint(color)
#     self.color = color
#   end
#
#   def to_s
#     "My car is a #{self.color}, #{self.year}, #{@model}!"
#   end
#
#   def age
#     puts "Your #{self.model} is #{years_old} years old."
#   end
#
#   private
#
#   def years_old
#     Time.now.year - self.year
#   end
#
# end
#
# module Pimpable
#   def pimp_my_ride
#     "Your #{self.color}, #{self.year}, #{@model} has been pimped!"
#   end
# end
#
# class MyCar < Vehicle
#   include Pimpable
#   FOUR_WHEEL_DRIVE = false
# end
#
# class MyTruck < Vehicle
#   include Pimpable
#   FOUR_WHEEL_DRIVE = true
# end
#
# puts MyCar.ancestors
# puts MyTruck.ancestors
# puts Vehicle.ancestors
#
# p Vehicle.descendants
#
# MyCar.mileage(16, 420)
#
# sharon = MyCar.new(1992, 'Honda Accord', 'white')
# ethel = MyTruck.new(2002, 'Ford F350', 'white')
#
# p sharon.pimp_my_ride
# p ethel.pimp_my_ride
#
# sharon.age
# ethel.age

#Problem no.7

class Student
  attr_reader :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    if get_grade > other_student.get_grade
      return true
    elsif get_grade < other_student.get_grade
      return false
    end
  end

  protected

  def get_grade
    self.grade
  end

end

ryan = Student.new("Ryan", 100)
jason = Student.new("Jason", 50)

who_is_better = ryan.better_grade_than?(jason) ? "Well done!" : "You either have the same grade or your grade is lower.  Study up!"

puts who_is_better


#8
  #You can't access a private method through a public object.  The method 'hi' would need to be moved out of the private section.
