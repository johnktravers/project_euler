require 'minitest/test'
require 'minitest/autorun'

class LargestPalindromicProductTest < Minitest::Test
  def largest_palindromic_product(num_digits = 3)
    max = 10 ** num_digits - 1
    min = 10 ** (num_digits - 1)

    range = (min..max).to_a.reverse
    products = range.product(range).map { |a, b| a * b }

    max_product = 0
    products.each do |product|
      if product.to_s == product.to_s.reverse && product > max_product
        max_product = product
      end
    end

    max_product
  end

  def test_largest_palindromic_product
    assert_equal 9009, largest_palindromic_product(2)
    assert_equal 906609, largest_palindromic_product(3)
  end
end
