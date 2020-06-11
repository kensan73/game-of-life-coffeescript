import neighbors from './neighbors'

_ = window.next = (board) ->
  board.map((row, y) ->
    row.map((col, x) ->
      n = neighbors(board, x, y)
      return 1 if board[y][x] and (n is 2 or n is 3)
      return 0 if board[y][x]
      return 1 if n is 3
      return 0
    )
  )
