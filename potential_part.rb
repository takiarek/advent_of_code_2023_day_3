class PotentialPart
  attr_reader :number

  def initialize(line, number)
    @line, @number = line, number
  end

  def neighbourhood_boundries
    neighbourhood_start..neighbourhood_finish
  end

  private

  def neighbourhood_start
    [start_index - 1, 0].max
  end

  def neighbourhood_finish
    [end_index + 1, line.value.length - 1].min
  end

  def start_index
    line.value.index(number)
  end

  def end_index
    line.value.index(number) + number.length - 1
  end

  private

  attr_reader :line
end
