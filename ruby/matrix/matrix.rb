class Matrix
  def initialize(string)
    @str = string.split("\n")
  end

  def rows
    @str.map { |s| s.split(" ").map(&:to_i) }
  end

  def columns
      rows.transpose
  end
end