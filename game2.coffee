do () ->
  neighbors = (board, x, y) ->
    prevrow = board[y-1] || []
    currow = board[y]
    nextrow = board[y+1] || []
    [
      prevrow[x-1], prevrow[x], prevrow[x+1],
      currow[x-1], ###currow[x],### currow[x+1],
      nextrow[x-1], nextrow[x], nextrow[x+1],
    ].reduce(
      ((prev, cur) -> prev + +!!cur),
      0)

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
