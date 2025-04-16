require 'pry'

class DeliveringService
  def initialize(directions, with_robo:false)
    @directions = directions
    @with_robo = with_robo
    @positions = [[0, 0], [0, 0]]
    @map = Hash.new(0)
    @map[[0, 0]] = 1

  end

  def houses_visited
    @directions.chars.each_with_index do |direction, index|
      mover_index = @with_robo ? index % 2 : 0
      move(@positions[mover_index], direction)
      @map[@positions[mover_index].dup] += 1
    end
    @map
  end

  def number_of_houses_visited
    houses_visited.keys.size
  end

  private

  def move(position, direction)
    case direction
    when '>' then position[0] += 1
    when '<' then position[0] -= 1
    when '^' then position[1] += 1
    when 'v' then position[1] -= 1
    end
  end
end
