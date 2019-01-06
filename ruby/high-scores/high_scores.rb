class HighScores
  attr_reader :scores

  def initialize(scores = [])
    @scores = scores
    @max = scores.max
    @lastest = scores.last
  end

  def latest
    lastest
  end

  def personal_best
    max
  end

  def personal_top
    scores.sort { |a, b| b <=> a }.first(3)
  end

  def report
    if lastest < max
      report = "That's #{max - lastest} short of your personal best!"
    else
      report = "That's your personal best!"
    end

    "Your latest score was #{lastest}. #{report}"
  end

  private

  attr_reader :lastest, :max
end
