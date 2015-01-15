require 'minitest/autorun'
require 'minitest/pride'
require './lib/solver'

class SolverTest < Minitest::Test

  def test_it_solves_a_board_with_one_blank_cell  # main integration test
    puzzle = File.read('./test/support/puzzle_full.txt').rstrip
    solver = Solver.new
    calculated_solution = solver.solve(puzzle)
    expected_solution = File.read('./test/support/puzzle_full_solved.txt').rstrip
    assert_equal expected_solution, calculated_solution
  end



end
