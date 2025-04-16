class RibbonOrderCalculator
  def initialize(length:, width:, height:)
    @length = length
    @width = width
    @height = height
  end

  def order
    shortest_distance_around_its_side + bow
  end

  private

  def shortest_distance_around_its_side
    sides = [@length, @width, @height].sort
    smallest_side, second_to_smallest_side, biggest_side = sides
    2 * (smallest_side + second_to_smallest_side)
  end

  def bow
    @length * @width * @height
  end
end
