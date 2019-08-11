class Pangram
  def self.pangram?(sentence)
    pangram = "abcdefghijklmnopqrstuvwxyz".chars
    pangram.map { |p| sentence.downcase.chars.include?(p) }.all?(true)
  end
end