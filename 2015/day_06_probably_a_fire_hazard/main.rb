require 'pry'
require_relative 'lightning_configuration'

class Main

  def self.perform
    instructions = File.readlines('instructions.txt', chomp: true)
    p LightningConfiguration.new(instructions).execute_instructions.number_of_lights_lit
  end
end

Main.perform
