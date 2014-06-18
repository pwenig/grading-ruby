class Grading

  def initialize(grades)
    @grades = grades
  end

  def analyze
    trend = []
    i=0
    if @grades[i] > @grades[i+1]
      trend << :down
    else
      trend << :up
    end
  end
end