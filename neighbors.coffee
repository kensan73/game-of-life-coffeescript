Neighbors = exports? and exports or @Neighbors = {}

Neighbors.neighbors = (board, x, y) ->
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
