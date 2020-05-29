require 'minitest/test'
require 'minitest/autorun'

class NamesScoresTest < Minitest::Test
  def names_scores(names)

  end

  def alphabetical_value(name)
    name.chars.map { |letter| letter.ord - 64 }.sum
  end

  #----------------- Tests -----------------#

  def test_names_scores
    assert_equal 504, names_scores(NAMES)
  end

  def test_alphabetical_value
    assert_equal 53, alphabetical_value('COLIN')
    assert_equal 57, alphabetical_value('MARY')
    assert_equal 77, alphabetical_value('PATRICIA')
  end
end
