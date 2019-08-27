class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(list)
    if list.map(&:downcase).include?(@word.downcase)
      return []
    else
      list.select { |l| l.downcase.chars.sort == @word.downcase.chars.sort }
    end
  end
end