class Series
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def slices(digits)
    raise ArgumentError if str.length < digits

    str.chars.each_cons(digits).map(&:join)
  end
end