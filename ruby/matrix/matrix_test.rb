require 'minitest/autorun'
require_relative 'matrix'

class MatrixTest < Minitest::Test
  def test_extract_a_row
    matrix = Matrix.new("1 2\n10 20")
    assert_equal [1, 2], matrix.rows[0]
  end

  def test_extract_same_row_again
    matrix = Matrix.new("9 7\n8 6")
    assert_equal [9, 7], matrix.rows[0]
  end

  def test_extract_other_row
    matrix = Matrix.new("9 8 7\n19 18 17")
    assert_equal [19, 18, 17], matrix.rows[1]
  end

  def test_extract_other_row_again
    matrix = Matrix.new("1 4 9\n16 25 36")
    assert_equal [16, 25, 36], matrix.rows[1]
  end

  def test_extract_a_column
    matrix = Matrix.new("1 2 3\n4 5 6\n7 8 9\n 8 7 6")
    assert_equal [1, 4, 7, 8], matrix.columns[0]
  end

  def test_extract_another_column
    matrix = Matrix.new("89 1903 3\n18 3 1\n9 4 800")
    assert_equal [1903, 3, 4], matrix.columns[1]
  end

  def test_extract_complex_matrix
    matrix = Matrix.new("1 2 3 4 5\n6 7 8 9 10\n11 12 13 14 15\n16 17 18 19 20\n21 22 23 24 25")
    assert_equal [1, 2, 3, 4, 5], matrix.rows[0]
    assert_equal [6, 7, 8, 9, 10], matrix.rows[1]
    assert_equal [11, 12, 13, 14, 15], matrix.rows[2]
    assert_equal [16, 17, 18, 19, 20], matrix.rows[3]
    assert_equal [21, 22, 23, 24, 25], matrix.rows[4]

    assert_equal [1, 6, 11, 16, 21], matrix.columns[0]
    assert_equal [2, 7, 12, 17, 22], matrix.columns[1]
    assert_equal [3, 8, 13, 18, 23], matrix.columns[2]
    assert_equal [4, 9, 14, 19, 24], matrix.columns[3]
    assert_equal [5, 10, 15, 20, 25], matrix.columns[4]
  end
end
