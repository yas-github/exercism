class HighScores
  attr_accessor :scores

  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.sort.last
  end

  def personal_top_three
    if @scores.length >= 3
      @scores.sort { |a,b| b <=> a }[0,3]
    else
      @scores.sort { |a, b| b <=> a }
    end
  end
end