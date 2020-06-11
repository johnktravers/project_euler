require 'minitest/test'
require 'minitest/autorun'

class NonabundantSumsTest < Minitest::Test
  def nonabundant_sums
    abundants = []
    sum = 0

    (1..28123).each do |num|
      abundants.push(num) if abundant?(num)
      sum += num if !sum_of_two_abundants?(num, abundants)
    end

    sum
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
    assert_equal 4179871, nonabundant_sums
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
    assert_equal 55, divisor_sum(36)
  end
end
