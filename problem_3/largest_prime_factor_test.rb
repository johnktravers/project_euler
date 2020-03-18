require 'minitest/autorun'
require 'minitest/pride'

class LargestPrimeFactorTest < Minitest::Test
  def prime(num)
    return false if num < 2
    return true if num == 2
    (3..(num / 2)).step(2).each { |n| return false if num % n == 0 }
    true
  end

  def largest_prime_factor(num)
    (num / 2).step(1, -2).each { |n| return n if num % n == 0 && prime(n) }
  end

  def test_prime
    assert_equal false, prime(0)
    assert_equal false, prime(1)
    assert_equal true, prime(2)
    assert_equal true, prime(5)
    assert_equal true, prime(29)
    assert_equal false, prime(99)
  end

  def test_largest_prime_factor
    assert_equal 29, largest_prime_factor(13195)
    # assert_equal 3299, largest_prime_factor(13196)
    # assert_equal 3299, largest_prime_factor(600851475143)
  end
end
