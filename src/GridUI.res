let renderCell = (cell: Cell.t) =>
  switch cell.state {
  | Hidden => React.string("H")
  | Dug => React.string("D")
  | Blown => React.string("B")
  | Flagged => React.string("F")
  }

let renderCellRows = cells => {
  cells->Belt.Array.mapWithIndex((i, cell) => {
    <div key={Belt.Int.toString(i)} className="GridCell"> {renderCell(cell)} </div>
  })
}

@react.component
let make = (~cells: array<Cell.t>, ~rowSize, ~columnSize) => {
  let customProp =
    ReactDOM.Style.make()
    ->ReactDOM.Style.unsafeAddProp(_, "--rowSize", string_of_int(rowSize))
    ->ReactDOM.Style.unsafeAddProp(_, "--columnSize", string_of_int(columnSize))

  <div className="GridUI" style=customProp> {renderCellRows(cells)->React.array} </div>
}
