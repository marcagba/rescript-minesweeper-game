%%raw(`import './App.css'`)

module GameLogicContext = {
  let grid = Grid.make(9, 9, 10)
}

module AppShell = {
  @react.component
  let make = (~children) => {
    <section className="AppShell"> children </section>
  }
}

open GameLogicContext;
@react.component
let make = () => {
  <AppShell> <GridUI cells=grid.cells /> </AppShell>
}
