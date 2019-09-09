class Series
  def initialize(str)
    @str = str
  end

  def slices(digits)
    error_message = "Digits must be less than argument's length."
    raise ArgumentError.new(error_message) if str.length < digits
    str.chars.each_cons(digits).map(&:join)
  end

  private
  attr_reader :str
end