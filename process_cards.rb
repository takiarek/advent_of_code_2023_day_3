class ProcessCards
  def initialize(input)
    @lines = File.readlines(input).map(&:strip)
  end

  def calculate_points
    lines.sum do |line|
      winning_numbers, my_numbers = winnning_and_my_numbers(line)

      my_numbers.reduce(0) do |points, my_number|
        next points unless winning_numbers.include?(my_number)

        (points == 0) ? points + 1 : points * 2
      end
    end
  end

  private

  attr_reader :lines

  def winnning_and_my_numbers(line)
    line.split(": ")[1].split(" | ").map do |numbers_string|
      numbers_string.split(" ")
    end
  end
end
