require "minitest/autorun"

require_relative "process_cards"

class ProcessCardsTest < Minitest::Test
  def test_calculate_points
    assert_equal(13, ProcessCards.new("../inputs/4/example_input.txt").calculate_points)
  end

  def test_calculate_cards_won
    assert_equal(30, ProcessCards.new("../inputs/4/example_input.txt").calculate_cards_won)
  end
end
