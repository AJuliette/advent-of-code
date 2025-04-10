require_relative 'wrapping_order_calculator'
require_relative 'file_reader'

class Main
  def self.perform
    array_of_presents = FileReader.perform
    array_of_presents.map do |present|
      length, width, height = present
      WrappingOrderCalculator.new(length: length.to_i, width: width.to_i, height: height.to_i).wrapping_paper_to_order
    end.sum
  end
end

p Main.perform
