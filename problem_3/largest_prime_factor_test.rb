require 'minitest/autorun'
require 'minitest/pride'

class LargestPrimeFactorTest < Minitest::Test
  def prime(num)
    if num <= 1
      return false
    else
      (2..(num / 2)).each { |n| return false if num % n == 0 }
      true
    end
  end

  def largest_prime_factor(num)
    start = num
    until start.odd?
      start = start / 2
    end

    sqrt_max = Math.sqrt(start).to_i + 1
    sqrt_max.step(3, -2).each { |n| return n if num % n == 0 && prime(n) }
  end

  def test_prime
    assert_equal false, prime(0)
    assert_equal false, prime(1)
    assert_equal true, prime(2)
    assert_equal false, prime(4)
    assert_equal true, prime(5)
    assert_equal true, prime(29)
    assert_equal false, prime(99)
  end

  def test_largest_prime_factor
    assert_equal 29, largest_prime_factor(13195)
    assert_equal 6857, largest_prime_factor(600851475143)
  end
end
