class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    return true if @sides.uniq.count == 1 && @sides.uniq.first > 0
  end

  def isosceles?
    equal_side  = @sides.select { |s| @sides.count(s) >= 2 }.uniq[0]
    single_side = @sides.select { |s| @sides.count(s) == 1 }[0]
    equal_count = @sides.count(equal_side)

    return true if equal_count == 3 || equal_count == 2 && equal_side * 2 > single_side
  end

  def scalene?
    sort = @sides.sort
    return true if @sides.uniq.count == 3 && sort[0] + sort[1] >= sort[2]
  end
end