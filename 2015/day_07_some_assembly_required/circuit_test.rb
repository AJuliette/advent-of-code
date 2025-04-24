require 'minitest/autorun'
require_relative 'circuit'

class CircuitTest < Minitest::Test  
  def test_d
    instructions = [
      "123 -> x",
      "456 -> y",
      "x AND y -> d",
      "x OR y -> e",
      "x LSHIFT 2 -> f",
      "y RSHIFT 2 -> g",
      "NOT x -> h",
      "NOT y -> i"
    ]
    wire = 'd'
    assert_equal 72, Circuit.new(instructions).signal(wire)
  end

  def test_e
    instructions = [
      "123 -> x",
      "456 -> y",
      "x AND y -> d",
      "x OR y -> e",
      "x LSHIFT 2 -> f",
      "y RSHIFT 2 -> g",
      "NOT x -> h",
      "NOT y -> i"
    ]
    wire = 'e'
    assert_equal 507, Circuit.new(instructions).signal(wire)
  end

  def test_f
    instructions = [
      "123 -> x",
      "456 -> y",
      "x AND y -> d",
      "x OR y -> e",
      "x LSHIFT 2 -> f",
      "y RSHIFT 2 -> g",
      "NOT x -> h",
      "NOT y -> i"
    ]
    wire = 'f'
    assert_equal 492, Circuit.new(instructions).signal(wire)
  end

  def test_g
    instructions = [
      "123 -> x",
      "456 -> y",
      "x AND y -> d",
      "x OR y -> e",
      "x LSHIFT 2 -> f",
      "y RSHIFT 2 -> g",
      "NOT x -> h",
      "NOT y -> i"
    ]
    wire = 'g'
    assert_equal 114, Circuit.new(instructions).signal(wire)
  end

  def test_h
    instructions = [
      "123 -> x",
      "456 -> y",
      "x AND y -> d",
      "x OR y -> e",
      "x LSHIFT 2 -> f",
      "y RSHIFT 2 -> g",
      "NOT x -> h",
      "NOT y -> i"
    ]
    wire = 'h'
    assert_equal 65412, Circuit.new(instructions).signal(wire)
  end

  def test_i
    instructions = [
      "123 -> x",
      "456 -> y",
      "x AND y -> d",
      "x OR y -> e",
      "x LSHIFT 2 -> f",
      "y RSHIFT 2 -> g",
      "NOT x -> h",
      "NOT y -> i"
    ]
    wire = 'i'
    assert_equal 65079, Circuit.new(instructions).signal(wire)
  end

  def test_x
    instructions = [
      "123 -> x",
      "456 -> y",
      "x AND y -> d",
      "x OR y -> e",
      "x LSHIFT 2 -> f",
      "y RSHIFT 2 -> g",
      "NOT x -> h",
      "NOT y -> i"
    ]
    wire = 'x'
    assert_equal 123, Circuit.new(instructions).signal(wire)
  end

  def test_y
    instructions = [
      "123 -> x",
      "456 -> y",
      "x AND y -> d",
      "x OR y -> e",
      "x LSHIFT 2 -> f",
      "y RSHIFT 2 -> g",
      "NOT x -> h",
      "NOT y -> i"
    ]
    wire = 'y'
    assert_equal 456, Circuit.new(instructions).signal(wire)
  end
end
