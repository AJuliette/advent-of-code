require 'minitest/autorun'
require_relative 'lightning_configuration'

class LightningConfigurationTest < Minitest::Test
  def test_turn_on_small_corner
    instructions = ["toggle 0,0 through 2,2"]
    assert_equal 9, LightningConfiguration.new(instructions).execute_instructions.number_of_lights_lit
  end
end
