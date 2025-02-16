require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    case
    when @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      raise TriangleError
    when (@side1 + @side2) <= @side3 || (@side2 + @side3) <= @side1 || (@side1 + @side3) <= @side2
      raise TriangleError
    when @side1 == @side2 && @side2 == @side3
      :equilateral  
    when @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles 
    when @side1 != @side2 || @side1 != @side3 || @side2 != @side3
      :scalene
    end    
  end

  class TriangleError < StandardError 
  end
  
end
