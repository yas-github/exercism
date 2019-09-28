class Grains
  class << self
    def square(num)
      raise ArgumentError unless num > 0 && num < 65
      2 ** (num - 1)
    end

    def total
      (1..64).map { |n| square(n) }.sum
    end
  end
end
