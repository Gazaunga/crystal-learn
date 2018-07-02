struct Point
  property x, y

  def initialize(@x : Float64, @y : Float64)
  end

  def print
  puts "#{x} and #{y}"
  end

end

Point.new(0.1, 10.0).print
