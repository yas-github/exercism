class Phrase
  attr_reader :words
  REGEX = /\b[\w']+\b/

  def initialize(phrase)
    @words = phrase.scan(REGEX).map(&:downcase)
  end

  def word_count
    words.each_with_object({}) do |word, counts|
      counts[word] = words.count(word)
    end
  end
end