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
    
    case
    when @side1 == @side2 && @side2 == @side3
      :equilateral
    when @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles 
    when  @side1 != @side2 || @side1 != @side3 || @side2 != @side3
      :scalene
    when self.instance_variables.detect{|side| side == 0 }
      begin
        raise TriangleError
      rescue TriangleError => bad_triangle
        bad_triangle.not
      end
    end

    
  end
end
  
class TriangleError < StandardError
 
  def not_triangle
    "This is not a triangle"
  end

end

    # unless @side1 == @side2 && @side2 == @side3
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => triangle
    #     if triange == triangle.isosceles
    #       :isosceles
    #     elsif triangle == triange.scalar
    #       :scalar
    #     else
    #       triangle.not_triangle
    #     end
    #   end
    # else
    #   :equilateral
    # end