require 'minitest/autorun'
require_relative 'string_checker'

class StringCheckertTest < Minitest::Test
  def test_nice_string_ugknbfddgicrmopn
    string = 'ugknbfddgicrmopn'
    assert StringChecker.new(string).is_nice?
  end

  def test_nice_string_aaa
    string = 'aaa'
    assert StringChecker.new(string).is_nice?
  end

  def test_naughty_string_jchzalrnumimnmhp
    string = 'jchzalrnumimnmhp'
    refute StringChecker.new(string).is_nice?
  end

  def test_naughty_string_haegwjzuvuyypxyu
    string = 'haegwjzuvuyypxyu'
    refute StringChecker.new(string).is_nice?
  end

  def test_naughty_string_dvszwmarrgswjxmb
    string = 'dvszwmarrgswjxmb'
    refute StringChecker.new(string).is_nice?
  end
end
