module Main where

import Theme.Types
  ( Color(..)
  )
import Entity.Grids.Types
  ( PieceType(..)
  )
import Entity.Grids.Board
  ( initBoard
  )
import Game.Draw.Board
  ( drawBoard
  )
import Game.Draw.Color
  ( drawColor
  )
import Game.Draw.Window
  ( drawWindow
  )
import Game.Render.Board
  ( evalBoard
  , renderBoard
  , updateBoard
  )
import Game.Render.Pieces
  ( renderPieceFromType
  )
import Graphics.Gloss
  ( display
  )

main :: IO ()
main = display drawWindow (drawColor Black) picture
  where picture = evalBoard state board
        state   = updateBoard (renderPieceFromType I (0,0))
        board   = initBoard 10 20
