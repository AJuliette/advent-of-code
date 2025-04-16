class NotQuitLisp
  def self.calculate_floor(instructions)
    instructions.chars.sum { |instruction| instruction == '(' ? 1 : -1 }
  end

  def self.first_basement_position(instructions)
    floor = 0
  
    instructions.chars.each_with_index do |char, index|
      floor += (char == '(' ? 1 : -1)
      return index + 1 if floor == -1
    end
  
    nil
  end
end
