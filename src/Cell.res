type state =
  | Hidden
  | Dug
  | Blown
  | Flagged

type t = {state: state, hasBomb: bool}

let make = (~hasBomb=false, state) => {
  {state: state, hasBomb: hasBomb}
}
