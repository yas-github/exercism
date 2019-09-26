class Transpose
  def self.transpose(input)
    split = input.split("\n").map(&:chars)
    arr = []
    count = split.count
    length = split.map(&:count).max

    split.each do |s|
      if length > s.length
        (length - s.length).times { s << " " }
      end
    end

    split.transpose.map(&:join).join("\n")
  end
end
