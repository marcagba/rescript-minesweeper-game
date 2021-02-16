let renderCells = (cells: array<Cell.t>) => {
  cells->Belt.Array.map(cell => {
        switch cell.state {
        | Hidden => <div className="GridCell">{React.string("H")}</div>
        | Dug => <div className="GridCell">{React.string("D")}</div>
        | Blown => <div className="GridCell">{React.string("B")}</div>
        | Flagged => <div className="GridCell">{React.string("F")}</div>
        }
  })
}

@react.component
let make = (~cells: array<Cell.t>) => {
  <div className="GridUI">
  {renderCells(cells)->React.array}
  </div>
}
