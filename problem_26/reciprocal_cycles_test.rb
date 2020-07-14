require 'minitest/test'
require 'minitest/autorun'

class ReciprocalCyclesTest < Minitest::Test
  def longest_reciprocal_cycle(max)

  end

  def reciprocal_cycle_length(num)
    decimals = (1 / num.to_f).to_s.split('.')[1]
    dec_indices = Hash.new { |h,k| h[k] = Array.new }
    decimals.chars.each_with_index { |dig, i| dec_indices[dig].push(i) }

    length = 0

    dec_indices.each do |dig, indices|
      return 0 if indices.length == 1
      count = 0
      until count == indices.length - 1
        new_length = indices[count + 1] - indices[count]
        return 0 if count >= 1 && new_length != length
        length = new_length
        count += 1
      end
    end

    length
  end

  #----------------- Tests -----------------#

  def test_longest_reciprocal_cycle
    skip
    assert_equal 6, longest_reciprocal_cycle(10)
  end

  def test_reciprocal_cycle_length
    assert_equal 0, reciprocal_cycle_length(2)  # 1/2  = 0.5
    assert_equal 1, reciprocal_cycle_length(3)  # 1/3  = 0.(3)
    assert_equal 6, reciprocal_cycle_length(7)  # 1/7  = 0.(142857)
    assert_equal 1, reciprocal_cycle_length(9)  # 1/9  = 0.(1)
    assert_equal 0, reciprocal_cycle_length(10) # 1/10 = 0.1
  end
end
