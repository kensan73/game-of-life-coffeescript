do () ->
  _ = self.Life = (seed) ->
    @seed = seed
    @height = seed.length
    @width = seed[0].length
    @board = clone(seed)
    @

  _:: =
    next: () ->

    toString: () ->
      @board.forEach (r) ->
        console.log(r.join ',')

  clone = (array) ->
    array.slice().map (r) -> r.slice()

game = new Life([
  [0, 0, 0, 0, 0]
  [0, 0, 1, 0, 0]
  [0, 0, 1, 0, 0]
  [0, 0, 1, 0, 0]
  [0, 0, 0, 0, 0]
])

console.log(game + '')
game.next()
console.log(game + '')
