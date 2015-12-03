require 'minitest/autorun'
require_relative 'etl'

class SeriesTest < Minitest::Test
  def test_empty_old_hash
    old = {}
    assert_equal({}, ETL.transform(old))
  end
 
  def test_one
    old = {1 => ['A', 'E', 'I', 'O', 'U']}
    expected = { 'a' => 1,
                 'e' => 1,
                 'i' => 1,
                 'o' => 1,
                 'u' => 1 }
    assert_equal(expected, ETL.transform(old))
  end

  def test_two
    old = { 1 => ['A', 'E'], 2 => ['D', 'G']}
    expected = { 'a' => 1,
                 'e' => 1,
                 'd' => 2,
                 'g' => 2 }
    assert_equal(expected, ETL.transform(old))
  end

  def test_data_set
    old = { 1 => ['A', 'E'], 2 => ['D', 'G'], 4 => ['F', 'h'], 10 => ['q', 'Z'] }
    expected = { 'a' => 1,
                 'e' => 1,
                 'd' => 2,
                 'g' => 2,
                 'f' => 4,
                 'h' => 4,
                 'q' => 10,
                 'z' => 10 }
    assert_equal(expected, ETL.transform(old))   
  end
end