class Matrix
  attr_reader :rows, :columns

  def initialize(matrix_string)
    @rows = []
    @columns = []

    matrix_rows = matrix_string.split("\n")

    matrix_rows.each do |row_str|
      @rows.push(row_str.split.map(&:to_i))
    end

    ## Ez way of using ruby method
    # @columns = @rows.transpose

    ## Harder way of self-doing
    column_num = rows[0].count

    (0..column_num).each do |col_index|
      column = []
      rows.each.with_index do |row, row_index|
        column.push(rows[row_index][col_index])
      end

      @columns.push(column)
    end
  end
end
