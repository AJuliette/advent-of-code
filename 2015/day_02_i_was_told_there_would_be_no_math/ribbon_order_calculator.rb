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
    perimeters = { face_lxw: 2*(@length + @width), face_wxh: 2*(@width + @height), face_hxl: 2*(@height + @length) }
    min_val = perimeters.values.min
    min_face = perimeters.find { |_, v| v == min_val }
    face, value = min_face
    value
  end

  def bow
    @length * @width * @height
  end
end
