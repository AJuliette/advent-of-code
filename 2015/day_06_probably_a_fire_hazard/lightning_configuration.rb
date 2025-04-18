class LightningConfiguration
  def initialize(instructions)
    @instructions = prepare_instructions(instructions)
    @grid = grid
  end

  def execute_instructions
    @instructions.each do |instruction|
      execute_instruction(instruction[:coordinates_start], instruction[:coordinates_end], instruction[:order])
    end
    self
  end

  def number_of_lights_lit
    @grid.flatten.sum
  end

  private

  def grid
    (0..999).each_with_object([]) do |row_index, array|
      array.push((0..999).to_a.map { |column_index| 0 })
    end
  end

  def prepare_instructions(instructions)
    instructions.map do |instruction|
      instruction = instruction.split(' ')
      *order, coordinates_start, through, coordinates_end = instruction
      { coordinates_start: coordinates_start.split(',').map(&:to_i), coordinates_end: coordinates_end.split(',').map(&:to_i), order: order.join(' ') }
    end
  end

  def execute_instruction(coordinates_start, coordinates_end, order)
    x_start, y_start = coordinates_start
    x_end, y_end = coordinates_end
    (x_start..x_end).each do |index_row|
      if y_start.nil? || y_end.nil?
      end
      (y_start..y_end).each do |index_column| 
        case order
        when 'toggle' then toggle(index_row, index_column)
        when 'turn off' then turn_off(index_row, index_column)
        when 'turn on' then turn_on(index_row, index_column)
        end
      end
    end
  end

  def toggle(index_row, index_column)
    @grid[index_row][index_column] += 2
  end

  def turn_off(index_row, index_column)
    (@grid[index_row][index_column] -= 1) if @grid[index_row][index_column] > 0
  end

  def turn_on(index_row, index_column)
    @grid[index_row][index_column] += 1
  end
end
