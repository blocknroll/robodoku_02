require 'minitest/autorun'
require 'minitest/pride'
require './lib/cell'

class CellTest < Minitest::Test

  def test_it_initially_has_9_possibilities
    cell = Cell.new
    assert_equal [1,2,3,4,5,6,7,8,9], cell.possibilities
  end

  def test_it_is_initially_unknown
    cell = Cell.new
    refute cell.known?
  end

  def test_it_can_store_a_value
    cell = Cell.new
    cell.value = 5
    assert cell.known?
  end

  def test_it_can_lose_possibilities
    cell = Cell.new
    cell.remove_possibility(5)
    assert_equal 8, cell.possibilities.count
  end

end
