// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Belt_Array from "bs-platform/lib/es6/belt_Array.js";
import * as Cell$RescriptMinesweeperGame from "./Cell.bs.js";

function make(width, height, mines) {
  var remainingBombs = {
    contents: mines
  };
  var cells = Belt_Array.makeByAndShuffle(Math.imul(width, height), (function (param) {
          if (remainingBombs.contents > 0) {
            remainingBombs.contents = remainingBombs.contents - 1 | 0;
            return Cell$RescriptMinesweeperGame.make(true, /* Hidden */0);
          } else {
            return Cell$RescriptMinesweeperGame.make(undefined, /* Hidden */0);
          }
        }));
  return {
          cells: cells,
          width: width,
          height: height
        };
}

export {
  make ,
  
}
/* No side effect */