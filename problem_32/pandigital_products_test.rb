require 'minitest/autorun'
require 'minitest/pride'

class PandigitalProductsTest < Minitest::Test
  def pandigital_products(n)
    products = []

    (1..1000).each do |a|
      (1..1000).each do |b|
        product = a * b
        products.push(product) if pandigital(n, [a, b, product])
      end
    end

    products.uniq.sum
  end

  def pandigital(n, nums)
    pandigits = (1..n).to_a

    digits = nums.map do |num|
      num.to_s.chars.map { |dig| dig.to_i }
    end.flatten.sort

    digits == pandigits
  end

  #----------------- Tests -----------------#

  def test_pandigital_products
    assert_equal 12,    pandigital_products(4)
    assert_equal 52,    pandigital_products(5)
    assert_equal 30424, pandigital_products(9)
  end

  def test_pandigital
    assert_equal true,  pandigital(9, [39, 186, 7254])
    assert_equal false, pandigital(8, [39, 16, 7254])
  end
end
