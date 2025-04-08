class NotQuitLisp
  def self.part_one(instruction)
    floor = 0
    instruction.each_char do |char|
      if char == '('
        floor += 1
      elsif char == ')'
        floor -= 1
      end
    end
    floor
  end
end
