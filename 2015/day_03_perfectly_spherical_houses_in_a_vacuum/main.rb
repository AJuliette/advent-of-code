require_relative 'delivering_service'
require_relative 'file_reader'

class Main
  def self.perform(with_robot: false)
    directions = FileReader.perform.chars
    if with_robot
      santa_directions = directions.select.with_index { |_, i| i.odd? }
      robot_santa_directions = directions.select.with_index { |_, i| i.even? }
      DeliveringService.new(santa_directions).houses_visited.merge(DeliveringService.new(robot_santa_directions).houses_visited) {|key, santa_values, robot_values| santa_values + robot_values }.keys.count
    else
      DeliveringService.new(directions).number_of_houses_visited
    end
  end
end

p Main.perform
p Main.perform(with_robot: true)