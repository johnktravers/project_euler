require 'minitest/autorun'
require 'minitest/pride'

class PrimeSummationTest < Minitest::Test
  def prime_summation(max)
    max = max - 1 if max.even?
    sum = max >= 2 ? 2 : 0

    (3..max).step(2) do |num|
      prime = true
      (2..(num ** 0.5 + 1)).each do |n|
        break prime = false if num % n == 0
      end
      sum += num if prime
    end

    sum
  end

  #----------------- Tests -----------------#

  def test_prime_summation
    assert_equal 17, prime_summation(10)
    assert_equal 76127, prime_summation(1000)
    assert_equal 142913828922, prime_summation(2000000)
  end
end
