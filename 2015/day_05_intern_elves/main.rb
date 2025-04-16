require_relative 'string_checker'
require_relative 'file_reader'

class Main
  def self.perform
    lines = FileReader.perform
    count = 0
    lines.each do |line|
      (count += 1) if StringChecker.new(line).is_nice?
    end
    count
  end
end

p Main.perform
