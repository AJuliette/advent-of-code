require 'minitest/autorun'
require_relative 'wrapping_order_calculator'

class WrappingOrderCalculatorTest < Minitest::Test
  def test_one
    assert_equal 58, WrappingOrderCalculator.new(length: 2, width: 3, height: 4).wrapping_paper_to_order
  end

  def test_two
    assert_equal 43, WrappingOrderCalculator.new(length: 1, width: 1, height: 10).wrapping_paper_to_order
  end
end
