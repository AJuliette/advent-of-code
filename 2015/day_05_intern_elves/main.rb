require_relative 'string_checker'
require_relative 'file_reader'

class Main
  def self.perform
    lines = FileReader.perform
    lines.count { |line| StringChecker.new(line).is_nice? }
  end
end

p Main.perform
