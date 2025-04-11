require 'pry'

class DeliveringService
  def initialize(directions)
    @directions = directions
    @position = [0,0]
    @map = {}
    @map[@position] = 1
    @x, @y = @position
  end

  def houses_visited
    @directions.each do |direction|
      case direction
      when '>'
        @x += 1
        @position = [@x, @y]
        @map[@position] ||= 0
        @map[@position] += 1
      when '<'
        @x -= 1
        @position = [@x, @y]
        @map[@position] ||= 0
        @map[@position] += 1
      when '^'
        @y += 1
        @position = [@x, @y] 
        @map[@position] ||= 0
        @map[@position] += 1
      when 'v'
        @y -= 1
        @position = [@x, @y] 
        @map[@position] ||= 0
        @map[@position] += 1
      end
    end

    @map
  end

  def number_of_houses_visited
    houses_visited.keys.count
  end
end
