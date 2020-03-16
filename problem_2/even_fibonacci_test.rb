require('minitest/autorun')
require('minitest/pride')

class EvenFibonacciTest < Minitest::Test
  def fibonacci(n)
    if n <= 1
      return n
    else
      fibonacci(n - 1) + fibonacci(n - 2)
    end
  end

  def even_fibonacci_sum(limit)
    sum = 0
    n = 0
    fib = fibonacci(n)

    until fib >= limit
      n += 1
      fib = fibonacci(n)
      sum += fib if fib % 2 == 0
    end

    sum
  end

  def test_fibonacci
    assert_equal 1, fibonacci(1)
    assert_equal 13, fibonacci(7)
  end

  def test_even_fibonacci_sum
    assert_equal 44, even_fibonacci_sum(80)
    assert_equal 4613732, even_fibonacci_sum(4000000)
  end
end
