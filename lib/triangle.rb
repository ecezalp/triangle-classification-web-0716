require "pry"

class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a 
    @b = b
    @c = c
  end

  def kind
    if ((a + b <= c) || (a + c <= b)) || (b + c <= a)
      raise TriangleError
    elsif (a + b) + c == 0
      raise TriangleError
    end

    if (a == b) && (a == c)
      :equilateral
    elsif ( (a == b) || (a == c) ) || ( b == c )
      :isosceles
    elsif ( (a != b) && (a != c) ) && (b != c)
      :scalene
    end
  end
end

class TriangleError < StandardError

end
