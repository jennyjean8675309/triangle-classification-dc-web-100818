class Triangle

  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    if (@length_1 + @length_2 > @length_3 == false) || (@length_2 + @length_3 > @length_1 == false) || (@length_1 + @length_3 > @length_2 == false) || (@length_1 > 0 == false) || (@length_2 > 0 == false) || (@length_3 > 0 == false)
    raise TriangleError
    elsif @length_1 == @length_2 && @length_2 == @length_3
      :equilateral
    elsif (@length_1 == @length_2 && @length_1 != @length_3) || (@length_1 == @length_3 && @length_1 != @length_2) || (@length_2 == @length_3 && @length_2 != @length_1)
      :isosceles
    elsif (@length_1 != @length_2 && @length_2 != @length_3)
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
