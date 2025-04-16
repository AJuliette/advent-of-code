require 'minitest/autorun'
require_relative 'delivering_service'

class DeliveringServiceTest < Minitest::Test
  def test_two_houses_visited
    directions = ">"
    assert_equal 2, DeliveringService.new(directions).number_of_houses_visited
  end

  def test_four_houses_visited
    directions = "^>v<"
    assert_equal 4, DeliveringService.new(directions).number_of_houses_visited
  end

  def test_lucky_children
    directions = "^v^v^v^v^v"
    assert_equal 2, DeliveringService.new(directions).number_of_houses_visited
  end

  def test_three_houses_delivered_with_robot
    directions = "^v"
    assert_equal 3, DeliveringService.new(directions, with_robo: true).number_of_houses_visited
  end

  def test_three_houses_delivered_with_robot_again
    directions = "^>v<"
    assert_equal 3, DeliveringService.new(directions, with_robo: true).number_of_houses_visited
  end

  def test_eleven_houses_delivered_with_robot
    directions = "^v^v^v^v^v"
    assert_equal 11, DeliveringService.new(directions, with_robo: true).number_of_houses_visited
  end 
end
