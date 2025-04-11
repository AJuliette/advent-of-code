require_relative 'wrapping_order_calculator'
require_relative 'ribbon_order_calculator'
require_relative 'file_reader'

class Main
  def self.perform
    array_of_presents = FileReader.perform
    results = { 
      wrapping_order: 0,
      ribbon_order: 0
    }
    array_of_presents.map do |present|
      length, width, height = present
      results[:wrapping_order] += WrappingOrderCalculator.new(length: length.to_i, width: width.to_i, height: height.to_i).order
      results[:ribbon_order] += RibbonOrderCalculator.new(length: length.to_i, width: width.to_i, height: height.to_i).order
    end

    p 'Wrapping Order: ' + results[:wrapping_order].to_s
    p 'Ribbon Order: ' + results[:ribbon_order].to_s
  end
end

Main.perform
