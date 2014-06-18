class Grading

  def initialize(grades)
    @grades = grades
  end

  def analyze
    trend = []
    i=0
    while i <= @grades.length-2
    if @grades[i] > @grades[i+1]
      trend << :down
      i+=1
    elsif
    @grades[i] < @grades[i+1]
      trend << :up
      i+=1
    elsif
    @grades[i] == @grades[i+1]
      trend << :even
      i+=1
    end
    end
    trend
  end
end