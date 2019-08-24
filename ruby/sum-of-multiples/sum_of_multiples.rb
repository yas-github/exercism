class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(limit)
    arr = []
    i = 0
    unless @numbers == (nil || 0 || "")
      @numbers.count.times do
        arr << (1...limit).select { |l| l % @numbers[i] == 0 }
        i += 1
      end
      arr.flatten.uniq.sum
    end
  end
end