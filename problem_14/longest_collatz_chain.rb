require 'minitest/autorun'
require 'minitest/pride'

class LongestCollatzChainTest < Minitest::Test
  def max_collatz_chain(limit)
    max_num = 1
    max_length = 1

    (1..limit).each do |n|
      collatz_length = collatz_chain_length(n)
      if max_length < collatz_length
        max_num = n
        max_length = collatz_length
      end
    end

    max_num
  end

  def collatz_chain_length(start)
    n = start
    count = 1

    until n == 1
      if n.even?
        n = n / 2
      else
        n = (3 * n) + 1
      end
      count += 1
    end

    count
  end

  #----------------- Tests -----------------#

  def test_max_collatz_chain
    assert_equal 9, max_collatz_chain(13)
    assert_equal 837799, max_collatz_chain(1000000)
  end

  def test_collatz_chain_length
    assert_equal 20, collatz_chain_length(9)
    assert_equal 10, collatz_chain_length(13)
    assert_equal 153, collatz_chain_length(1000000)
  end
end
