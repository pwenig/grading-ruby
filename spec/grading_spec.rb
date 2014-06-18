require 'grading'

describe Grading do

  it "compares the first two items in an array" do
  grades = [6,3]
    grade_trend = Grading.new(grades)
    actual = grade_trend.analyze
    expected = [:down]
    expect(actual).to eq expected
  end

  it "compares the first three items in an array" do
    grades = [6,3,5]
    grade_trend = Grading.new(grades)
    actual = grade_trend.analyze
    expected = [:down, :up]
    expect(actual).to eq expected
  end

  it "compares the entire array of grades" do
    grades = [6,3,5,4,3,4,4,5]
    grade_trend = Grading.new(grades)
    actual = grade_trend.analyze
    expected = [:down,:up,:down,:down,:up,:even,:up]
    expect(actual).to eq expected

  end

end
