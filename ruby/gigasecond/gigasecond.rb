class Gigasecond
  def self.from time
    a = time.to_i + 10**9
    Time.at(a)
  end
end