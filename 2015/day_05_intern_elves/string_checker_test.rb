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

  # NEW RULES

  def test_nice_string_new_rules_qjhvhtzxzqqjkmpb
    string = 'qjhvhtzxzqqjkmpb'
    assert StringChecker.new(string, new_rules: true).is_nice?
  end

  def test_nice_string_new_rules_xxyxx
    string = 'xxyxx'
    assert StringChecker.new(string, new_rules: true).is_nice?
  end

  def test_naughty_string_new_rules_uurcxstgmygtbstg
    string = 'uurcxstgmygtbstg'
    refute StringChecker.new(string, new_rules: true).is_nice?
  end

  def test_naughty_string_new_rules_ieodomkazucvgmuy
    string = 'ieodomkazucvgmuy'
    refute StringChecker.new(string, new_rules: true).is_nice?
  end
end
