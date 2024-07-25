# Data Driven

```crystal
class Minesweeper
  OFFSETS = [
    {-1, -1}, {0, -1}, {1, -1},
    {-1,  0},          {1,  0},
    {-1,  1}, {0,  1}, {1,  1},
  ]

  def initialize(@board : Array(String) )
  end

  def annotate()
    nrows = @board.size()
    
    @board.map_with_index do |row, y|
      ncols = row.size()
      row.chars.map_with_index do |cell, x|
        if cell == '*'
          next '*'
        end
        sum = OFFSETS.count do |(dx, dy)|
          new_x = x + dx
          new_y = y + dy
          new_x >= 0 && new_x < ncols && new_y >= 0 && new_y < nrows && @board[new_y][new_x] == '*'
        end
        sum == 0 ? ' ' : sum.to_s
      end.join
    end
  end
end
```

Using a data-driven approach to create logic to solve minesweeper, makes the solution both concise and flexible.
If the rules change, it is as easy as to change the rules.
The solution starts by creating an `Array` with the rules which are tuples with the x and y offset.
The with defining a `initialize` method that takes an `Array(String)` as an argument and assigns it to an instance variable `@board`.

The `annotate` method starts with defining the number of rows in the board.
Then it maps over the `@board` array with the index `y` for each row.
And then it converts each row into an array of `Char` and maps over it with the index `x` for each cell.

If a cell is a mine, it will be skipped and the mine will be returned.
Otherwise, it will count the number of mines around the cell.
It will do this by having the rules defined in before, and then for each rule it will calculate the new x and y position.
It will then check if the new x and y position is within the bounds of the board and if the cell is a mine.
If it is the count will be incremented.

Finally, it will check if the sum is 0, if it is it will return a space, otherwise it will return the sum as a string.
And then it will join the row and return the board.
