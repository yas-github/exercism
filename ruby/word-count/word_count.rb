class Phrase
  attr_reader :words

  def initialize(phrase)
    phrase = phrase.gsub(/[\n\.\$\^:,!&@%]|(?<= )'|'(?= )/, " ")
    @words = phrase.split(" ").map(&:downcase)
  end

  def word_count
    counts = {}
    words.each { |word| counts[word] = words.count(word) }

    counts
  end
end