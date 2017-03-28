require 'minitest/autorun'
require './wundernut6.rb'

class TestBiggest < MiniTest::Test
  def setup
  end
  
  def test_ascending
    data = 1.upto(21).inject([]) {|a, n| a << n}
    assert_equal(11, Wundernut6.solve(data))
  end

  def test_descending
    data = 20.downto(1).inject([]) {|a, n| a << n}
    assert_equal(10, Wundernut6.solve(data))
  end
  
  def test_middle_solution
    data = [10, 1, 10, 2, 10, 3, 10, 2, 10, 1, 10]
    assert_equal(3, Wundernut6.solve(data))
  end
  
  def test_end_solution
    data = [10, 1, 10, 2, 10, 3, 10, 4, 10, 5, 10]
    assert_equal(4, Wundernut6.solve(data))
  end

  def test_start_solution
    data = [10, 6, 10, 7, 10, 8, 10, 4, 10, 5, 10]
    assert_equal(6, Wundernut6.solve(data))
  end

  def test_overlap
    data = [9, 19, 10, 18, 10, 17, 10, 16, 11, 15, 11, 14, 11, 15, 12, 16, 11, 17, 10, 18]
    assert_equal(11, Wundernut6.solve(data))    
  end
end
