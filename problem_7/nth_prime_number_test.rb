require 'minitest/autorun'
require 'minitest/pride'

class NthPrimeNumberTest < Minitest::Test
  def nth_prime_number(n)
    num = 1
    count = 0

    until count == n
      num += 1
      count += 1 if prime(num)
    end

    num
  end

  def prime(num)
    if num <= 1
      return false
    else
      (2..(num / 2)).each { |n| return false if num % n == 0 }
      true
    end
  end

  #------------------- Tests -------------------#

  def test_nth_prime_number
    assert_equal 13, nth_prime_number(6)
    assert_equal 547, nth_prime_number(101)
    assert_equal 104743, nth_prime_number(10001)
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
end
