class Phrase
  attr_reader :words
  REGEX = /\b[\w']+\b/

  def initialize(phrase)
    @words = phrase.scan(REGEX).map(&:downcase)
  end

  def word_count
    words.each_with_object(Hash.new(0)) do |word, counts|
      counts[word] += 1
    end
  end
end