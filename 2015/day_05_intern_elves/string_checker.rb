class StringChecker
  FORBIDDEN_STRINGS = ['ab', 'cd', 'pq', 'xy']
  VOWELS = /[aeiou]/

  def initialize(string)
    @string = string
  end

  def is_nice?
    contains_at_least_three_vowels? &&
      contains_at_least_one_letter_twice_in_a_row? &&
      does_not_contain_forbidden_strings?
  end

  private

  def contains_at_least_three_vowels?
    @string.scan(VOWELS).size >= 3
  end

  def contains_at_least_one_letter_twice_in_a_row?
    @string.chars.each_cons(2).any? { |substring| substring.uniq.count == 1 }
  end

  def does_not_contain_forbidden_strings?
    @string.chars.each_cons(2).none? { |substring| FORBIDDEN_STRINGS.include?(substring.join) }
  end
end
