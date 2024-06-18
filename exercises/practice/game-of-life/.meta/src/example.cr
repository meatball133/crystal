module GameOfLife
  def self.tick(board : Array(Array(Int32))) : Array(Array(Int32))
    result = Array(Array(Int32)).new
    board.each_with_index do |row, index_row|
      result << [] of Int32
      row.each_with_index do |cell, index_cell|
        sub_array = board[({index_row - 1, 0}.max)..(index_row + 1)].map do |row|
          row[({index_cell - 1, 0}.max)..(index_cell + 1)]
        end
        cells_around = check_surrounding_squares(sub_array, {index_row.zero? ? 0 : 1, index_cell.zero? ? 0 : 1})
        if cell == 1
          if 2 == cells_around.size || cells_around.size == 3
            result[index_row] << 1
          else
            result[index_row] << 0
          end
        else
          if cells_around.size == 3
            result[index_row] << 1
          else
            result[index_row] << 0
          end
        end
      end
    end
    result
  end

  private def self.check_surrounding_squares(board, center)
    result = [] of Int32
    board.each_with_index do |row, index_row|
      row.each_with_index do |cell, index_cell|
        if center[0] == index_row && center[1] == index_cell
          next
        end
        if cell == 1
          result << cell
        end
      end
    end
    result
  end
end
