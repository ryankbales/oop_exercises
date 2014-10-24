class MyCar

  attr_accessor :color
  attr_reader :year

  def self.mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon"
  end

  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(number)
    @speed += number
    puts "You are traveling at #{@speed} mph."
  end

  def brake(number)
    @speed -= number
    puts "You have slowed down to #{@speed} mph."
  end

  def speed
    puts "You are going #{@speed}mph"
  end

  def shut_off
    @speed = 0
    puts "You have slowed down to #{@speed} mph."
  end

  def spray_paint(color)
    self.color = color
  end

  def to_s
    "My car is a #{self.color}, #{self.year}, #{@model}!"
  end

end

MyCar.mileage(16, 420)

sharon = MyCar.new(1992, 'honda accord', 'white')

puts sharon
# sharon.speed_up(20)
# sharon.speed
# sharon.speed_up(20)
# sharon.speed
# sharon.brake(20)
# sharon.speed
# sharon.brake(20)
# sharon.speed
# sharon.shut_down
# sharon.speed

puts sharon.color
sharon.spray_paint("red")
puts sharon.color
# puts sharon.year
