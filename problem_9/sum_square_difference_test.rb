require 'minitest/autorun'
require 'minitest/pride'

class PythagoreanTripletTest < Minitest::Test
  def pythagorean_triplet(sum)
    (1..(sum/2)).to_a.reverse.each do |c|
      (1..(sum/6)).each do |i|
        b = c - i
        a = sum - c - b
        return [a, b, c] if a ** 2 + b ** 2 == c ** 2
      end
    end
  end

  def test_pythagorean_triplet
    assert_equal [3, 4, 5], pythagorean_triplet(12)
    assert_equal [5, 12, 13], pythagorean_triplet(30)
    assert_equal [80, 150, 170], pythagorean_triplet(400)
    assert_equal [200, 375, 425], pythagorean_triplet(1000)
    assert_equal [250, 600, 650], pythagorean_triplet(1500)
  end
end
