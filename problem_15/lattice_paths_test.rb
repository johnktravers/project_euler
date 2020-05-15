require 'minitest/autorun'
require 'minitest/pride'

class LatticePathTest < Minitest::Test
  def lattice_path(n)
    base = [1, 1]
    count = 0

    until count == (2 * n) - 1
      row = [1]
      base.each_with_index do |num, i|
        row.push(num + base[i + 1]) if base[i + 1]
      end
      row.push(1)
      base = row
      count += 1
    end

    base[(base.length / 2)]
  end

  #----------------- Tests -----------------#

  def test_lattice_path
    assert_equal 2,  lattice_path(1)
    assert_equal 6,  lattice_path(2)
    assert_equal 20, lattice_path(3)
    assert_equal 70, lattice_path(4)
    assert_equal 137846528820, lattice_path(20)
  end
end
