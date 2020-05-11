require 'minitest/autorun'
require 'minitest/pride'

class TriangularNumberTest < Minitest::Test
  def divisible_triangular_number(min_divisors)
    prime_nums = []
    current_num = 1
    increment = 1

    until num_divisors(current_num, prime_nums) > min_divisors do
      increment += 1
      next_num = current_num + increment
      (current_num..(next_num - 1)).each { |num| prime_nums.push(num) if prime(num) }
      current_num = next_num
    end

    current_num
  end

  def num_divisors(n, prime_nums)
    prime_divisors = Hash.new(0)
    prime_nums.each do |num|
      n_copy = n
      until n_copy % num != 0
        prime_divisors[num] += 1
        n_copy = n_copy / num
      end
    end

    count = 1
    prime_divisors.each { |num, exp| count *= (exp + 1)}
    count
  end

  def prime(num)
    if num <= 1
      return false
    else
      (2..(num / 2)).each { |n| return false if num % n == 0 }
      true
    end
  end

  #----------------- Tests -----------------#

  def test_divisible_triangular_number
    assert_equal 28, divisible_triangular_number(5)
    assert_equal 28, divisible_triangular_number(200)
  end

  def test_num_divisors
    assert_equal 1, num_divisors(1,  [])
    assert_equal 2, num_divisors(5,  [2, 3, 5])
    assert_equal 4, num_divisors(10, [2, 3, 5, 7])
    assert_equal 6, num_divisors(28, [2, 3, 5, 7, 11, 13, 17, 19, 23])
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
