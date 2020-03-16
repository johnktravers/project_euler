require('minitest/autorun')
require('minitest/pride')

class MultipleTest < Minitest::Test
  # Iterate from 1 to max_value
  # Initialize sum to 0
  # If divisible by 3 or 5
  #   Add to sum
  # Return sum

  def multiples_of_3_and_5(max_value)
    sum = 0
    (1..max_value - 1).to_a.each do |num|
      sum += num if num % 3 == 0 || num % 5 == 0
    end

    sum
  end

  def test_multiples_of_3_and_5
    assert_equal 23, multiples_of_3_and_5(10)
    assert_equal 2318, multiples_of_3_and_5(100)
    assert_equal 233168, multiples_of_3_and_5(1000)
  end
end
