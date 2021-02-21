// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Belt_Array from "bs-platform/lib/es6/belt_Array.js";
import * as ReactDOMStyle from "reason-react/src/ReactDOMStyle.bs.js";

function renderCell(cell) {
  var match = cell.state;
  switch (match) {
    case /* Hidden */0 :
        return "H";
    case /* Dug */1 :
        return "D";
    case /* Blown */2 :
        return "B";
    case /* Flagged */3 :
        return "F";
    
  }
}

function renderCellRows(cells) {
  return Belt_Array.mapWithIndex(cells, (function (i, cell) {
                return React.createElement("div", {
                            key: String(i),
                            className: "GridCell"
                          }, renderCell(cell));
              }));
}

function GridUI(Props) {
  var cells = Props.cells;
  var rowSize = Props.rowSize;
  var columnSize = Props.columnSize;
  var __x = {};
  var __x$1 = ReactDOMStyle.unsafeAddProp(__x, "--rowSize", String(rowSize));
  var customProp = ReactDOMStyle.unsafeAddProp(__x$1, "--columnSize", String(columnSize));
  return React.createElement("div", {
              className: "GridUI",
              style: customProp
            }, renderCellRows(cells));
}

var make = GridUI;

export {
  renderCell ,
  renderCellRows ,
  make ,
  
}
/* react Not a pure module */
