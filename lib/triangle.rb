require 'pry'

class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind

    unless @side1 == @side2 && @side2 == @side3
      begin
        raise TriangleError
      rescue TriangleError => triangle

      end
    else
      :equilateral
    end
  end
  
 class TriangleError < StandardError
 
  def isosceles
  end

  def scalar
  end
  
end
