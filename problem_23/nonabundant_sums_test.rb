require 'minitest/test'
require 'minitest/autorun'

class NonabundantSumsTest < Minitest::Test
  def nonabundant_sums(max_num)
  end

  def sum_of_two_abundants?(num, abundants)
    remainders = {}

    abundants.each do |a|
      remainder = num - a
      return true if remainders[a] || remainder == a
      remainders[remainder] = a
    end

    false
  end

  def abundant?(num)
    divisor_sum(num) > num
  end

  def divisor_sum(num)
    sum = 0
    (1..(num/2)).each { |i| sum += i if num % i == 0 }

    sum
  end

  #----------------- Tests -----------------#

  def test_nonabundant_sums
    skip
    assert_equal 504,   nonabundant_sums(1000)
    assert_equal 31626, nonabundant_sums(10000)
  end

  def test_sum_of_two_abundants
    assert_equal false, sum_of_two_abundants?(12, [])
    assert_equal true,  sum_of_two_abundants?(24, [12, 18, 20])

    abundants = [12, 18, 20, 24, 30, 36, 40, 42, 48, 54, 56, 60, 66, 70, 72]
    assert_equal true,  sum_of_two_abundants?(78, abundants)
  end

  def test_abundant
    assert_equal true,  abundant?(12)
    assert_equal false, abundant?(28)
    assert_equal false, abundant?(11)
  end

  def test_divisor_sum
    assert_equal 28, divisor_sum(28)
    assert_equal 16, divisor_sum(12)
  end
end
