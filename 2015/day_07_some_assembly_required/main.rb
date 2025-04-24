require_relative 'circuit'

class Main
  def self.perform
    input = File.read('input.txt').lines.map(&:strip)
    circuit = Circuit.new(input)
    a_value = circuit.signal('a')
    puts "Part 1: wire a = #{a_value}"

    modified_input = input.map do |line|
      line.end_with?('-> b') ? "#{a_value} -> b" : line
    end

    circuit_2 = Circuit.new(modified_input)
    new_a_value = circuit_2.signal('a')
    puts "Part 2: new wire a = #{new_a_value}"
  end
end

Main.perform
