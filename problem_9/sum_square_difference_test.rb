require 'minitest/autorun'
require 'minitest/pride'

class PythagoreanTripletTest < Minitest::Test
  def pythagorean_triplet(sum)
    (1..(sum/2)).to_a.reverse.each do |c|
      b = c - 1
      a = sum - c - b

      return [a, b, c] if a ** 2 + b ** 2 == c ** 2
    end
  end

  def test_pythagorean_triplet
    assert_equal [3, 4, 5], pythagorean_triplet(12)
    assert_equal [5, 12, 13], pythagorean_triplet(30)
    # assert_equal [], pythagorean_triplet(1000)
  end
end
