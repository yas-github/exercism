class Series
  def initialize(str)
    @str = str
  end

  def slices(digits)
    n = @str.length - digits + 1
    arr = []
    i = 0

    if n > 0
      n.times do
        arr << @str[i, digits]
        i += 1
      end
      return arr
    else
      raise ArgumentError
    end
  end
end