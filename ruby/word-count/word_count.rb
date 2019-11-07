class Phrase
  attr_reader :words
  # REGEX = /[^\b[\w']+\b]/
  REGEX = /[\n\.\$\^:,!&@%]|(?<= )'|'(?= )/

  def initialize(phrase)
    phrase = phrase.gsub(REGEX, " ")
    @words = phrase.split(" ").map(&:downcase)
  end

  def word_count
    words.each_with_object(counts = {}) do |word|
      counts[word] = words.count(word)
    end
    counts
  end
end