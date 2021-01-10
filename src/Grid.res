type t = {
  cells: array<Cell.t>,
  width: int,
  height: int,
}

let make = (width, height, mines): t => {
  let remainingBombs = ref(mines)
  let cells = Belt.Array.makeByAndShuffle(width * height, _ => {
    if remainingBombs.contents > 0 {
      remainingBombs := remainingBombs.contents - 1
      Cell.make(Cell.Hidden, ~hasBomb=true)
    } else {
      Cell.make(Cell.Hidden)
    }
  })
  {cells: cells, width: width, height: height}
}
