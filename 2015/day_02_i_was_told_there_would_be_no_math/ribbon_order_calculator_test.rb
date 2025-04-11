require 'minitest/autorun'
require_relative 'ribbon_order_calculator'

class RibbonOrderCalculatorTest < Minitest::Test
  def test_one
    assert_equal 34, RibbonOrderCalculator.new(length: 2, width: 3, height: 4).order
  end

  def test_two
    assert_equal 14, RibbonOrderCalculator.new(length: 1, width: 1, height: 10).order
  end
end
