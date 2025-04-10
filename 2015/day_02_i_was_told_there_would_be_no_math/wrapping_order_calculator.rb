class WrappingOrderCalculator
  def initialize(length:, width:, height:)
    @length = length
    @width = width
    @height = height
  end

  def wrapping_paper_to_order
    surface_area_of_the_box + spare
  end

  def surface_area_of_the_box
    2 * (@length*@width + @width*@height + @height*@length)
  end

  def spare
    [@length*@width, @width*@height, @height*@length].min
  end
end
