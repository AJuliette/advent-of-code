require_relative 'string_checker'
require_relative 'file_reader'

class Main
  def self.perform(new_rules: false)
    lines = FileReader.perform
    lines.count { |line| StringChecker.new(line, new_rules:).is_nice? }
  end
end

p Main.perform
p Main.perform(new_rules: true)
