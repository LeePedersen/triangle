class Triangle
  attr_accessor :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
  end

  def is_real?()
    if sides[0].to_i + sides[1].to_i < sides[2].to_i
      return false
    else
      return true
    end
  end

  def type()
    if sides[0] == sides[1] && sides[1] == sides[2]
      return "equilateral"
    elsif (sides[0].to_i ** 2) + (sides[1].to_i ** 2) == (sides[3].to_i ** 2)
      return "right"
    elsif sides[0] == sides[1] || sides[1] == sides[2]
      return "isosceles"
    else
      return "scalene"
    end
  end

end
