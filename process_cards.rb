class ProcessCards
  def initialize(input)
    @lines = File.readlines(input).map(&:strip)
  end

  def calculate_points
    lines.sum do |line|
      my_numbers(line).reduce(0) do |points, my_number|
        next points unless winning_numbers(line).include?(my_number)

        (points == 0) ? points + 1 : points * 2
      end
    end
  end

  private

  attr_reader :lines

  def winning_numbers(line)
    winnning_and_my_numbers(line)[0]
  end

  def my_numbers(line)
    winnning_and_my_numbers(line)[1]
  end

  def winnning_and_my_numbers(line)
    line.split(": ")[1].split(" | ").map do |numbers_string|
      numbers_string.split(" ")
    end
  end
end
