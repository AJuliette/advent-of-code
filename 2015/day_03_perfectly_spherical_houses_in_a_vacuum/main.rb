require_relative 'delivering_service'
require_relative 'file_reader'

class Main
  def self.perform
    instructions = FileReader.perform
    DeliveringService.new(instructions).number_of_houses_visited
  end
end

p Main.perform
