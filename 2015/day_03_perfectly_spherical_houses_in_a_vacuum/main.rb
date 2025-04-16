require_relative 'delivering_service'
require_relative 'file_reader'

class Main
  def self.perform(with_robo: false)
    directions = FileReader.perform
    DeliveringService.new(directions, with_robo:).number_of_houses_visited
  end
end

p Main.perform
p Main.perform(with_robo: true)