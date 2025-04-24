require_relative 'circuit'

class Main
  def self.perform
    input = File.read('input.txt').lines.map(&:strip)
    circuit = Circuit.new(input)
    puts "Signal to wire a: #{circuit.signal('a')}"
  end
end

Main.perform
