require 'minitest/autorun'
require_relative 'find_prime_factors'

class PhoneNumberTest < MiniTest::Unit::TestCase
  def setup; end

  def test_2
    assert_equal([2], PrimeFactor.factor(2))
  end

  def test_4
    assert_equal([2, 2], PrimeFactor.factor(4))
  end

  def test_9
    assert_equal([3, 3], PrimeFactor.factor(9))
  end

   def test_10
    assert_equal([2, 5], PrimeFactor.factor(10))
  end

  def test_35
    assert_equal([5, 7], PrimeFactor.factor(35))
  end

  def test_221
    assert_equal([13, 17], PrimeFactor.factor(221))
  end

  def test_345
    assert_equal([3, 5, 23], PrimeFactor.factor(345))
  end
end