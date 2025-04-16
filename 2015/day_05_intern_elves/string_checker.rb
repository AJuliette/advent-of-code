class StringChecker
  FORBIDDEN_STRINGS = /ab|cd|pq|xy/
  VOWELS = /[aeiou]/

  def initialize(string, new_rules: false)
    @string = string
    @new_rules = new_rules
  end

  def is_nice?
    if @new_rules
      contains_non_overlapping_pair? &&
      contains_one_repeating_letter_with_letter_between?
    else
      contains_at_least_three_vowels? &&
      contains_at_least_one_letter_twice_or_more_in_a_row? &&
        does_not_contain_forbidden_strings?
    end
  end

  private

  def contains_at_least_three_vowels?
    @string.scan(VOWELS).size >= 3
  end

  def contains_at_least_one_letter_twice_or_more_in_a_row?
    @string =~ /(.)\1/
  end

  def does_not_contain_forbidden_strings?
    @string !~ FORBIDDEN_STRINGS
  end

  def contains_non_overlapping_pair?
    (0..@string.length - 2).each do |i|
      pair = @string[i, 2]
      return true if @string.index(pair, i + 2)
    end
    false
  end

  def contains_one_repeating_letter_with_letter_between?
    @string =~ /(.).\1/
  end
end
